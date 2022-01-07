
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {scalar_t__* key_len; int * key_buf; scalar_t__ use_defaultkey; } ;
struct rtl_priv {TYPE_1__ sec; } ;
struct rtl_mac {scalar_t__ opmode; } ;
struct rtl_efuse {int* dev_addr; } ;
struct ieee80211_hw {int dummy; } ;



 int CAM_AES ;
 int CAM_CONFIG_NO_USEDK ;
 size_t CAM_PAIRWISE_KEY_POSITION ;
 int CAM_TKIP ;
 int CAM_WEP104 ;
 int CAM_WEP40 ;
 int COMP_ERR ;
 int COMP_SEC ;
 int DBG_DMESG ;
 int DBG_LOUD ;
 int MAX_KEY_LEN ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 size_t PAIRWISE_KEYIDX ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;

 size_t TOTAL_CAM_ENTRY ;


 int memset (int ,int ,int ) ;
 int pr_err (char*) ;
 int rtl_cam_add_one_entry (struct ieee80211_hw*,int*,size_t,size_t,int,int ,int ) ;
 int rtl_cam_del_entry (struct ieee80211_hw*,int*) ;
 int rtl_cam_delete_one_entry (struct ieee80211_hw*,int*,size_t) ;
 int rtl_cam_empty_entry (struct ieee80211_hw*,int) ;
 size_t rtl_cam_get_free_entry (struct ieee80211_hw*,int*) ;
 int rtl_cam_mark_invalid (struct ieee80211_hw*,int) ;
 struct rtl_efuse* rtl_efuse (struct rtl_priv*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

void rtl8723be_set_key(struct ieee80211_hw *hw, u32 key_index,
         u8 *p_macaddr, bool is_group, u8 enc_algo,
         bool is_wepkey, bool clear_all)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_efuse *rtlefuse = rtl_efuse(rtl_priv(hw));
 u8 *macaddr = p_macaddr;
 u32 entry_id = 0;
 bool is_pairwise = 0;

 static u8 cam_const_addr[4][6] = {
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x01},
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x02},
  {0x00, 0x00, 0x00, 0x00, 0x00, 0x03}
 };
 static u8 cam_const_broad[] = {
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff
 };

 if (clear_all) {
  u8 idx = 0;
  u8 cam_offset = 0;
  u8 clear_number = 5;

  RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG, "clear_all\n");

  for (idx = 0; idx < clear_number; idx++) {
   rtl_cam_mark_invalid(hw, cam_offset + idx);
   rtl_cam_empty_entry(hw, cam_offset + idx);

   if (idx < 5) {
    memset(rtlpriv->sec.key_buf[idx], 0,
           MAX_KEY_LEN);
    rtlpriv->sec.key_len[idx] = 0;
   }
  }

 } else {
  switch (enc_algo) {
  case 128:
   enc_algo = CAM_WEP40;
   break;
  case 129:
   enc_algo = CAM_WEP104;
   break;
  case 130:
   enc_algo = CAM_TKIP;
   break;
  case 131:
   enc_algo = CAM_AES;
   break;
  default:
   RT_TRACE(rtlpriv, COMP_ERR, DBG_LOUD,
     "switch case %#x not processed\n", enc_algo);
   enc_algo = CAM_TKIP;
   break;
  }

  if (is_wepkey || rtlpriv->sec.use_defaultkey) {
   macaddr = cam_const_addr[key_index];
   entry_id = key_index;
  } else {
   if (is_group) {
    macaddr = cam_const_broad;
    entry_id = key_index;
   } else {
    if (mac->opmode == NL80211_IFTYPE_AP) {
     entry_id = rtl_cam_get_free_entry(hw,
        p_macaddr);
     if (entry_id >= TOTAL_CAM_ENTRY) {
      pr_err("Can not find free hw security cam entry\n");
      return;
     }
    } else {
     entry_id = CAM_PAIRWISE_KEY_POSITION;
    }

    key_index = PAIRWISE_KEYIDX;
    is_pairwise = 1;
   }
  }

  if (rtlpriv->sec.key_len[key_index] == 0) {
   RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
     "delete one entry, entry_id is %d\n",
      entry_id);
   if (mac->opmode == NL80211_IFTYPE_AP)
    rtl_cam_del_entry(hw, p_macaddr);
   rtl_cam_delete_one_entry(hw, p_macaddr, entry_id);
  } else {
   RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
     "add one entry\n");
   if (is_pairwise) {
    RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
      "set Pairwise key\n");

    rtl_cam_add_one_entry(hw, macaddr, key_index,
            entry_id, enc_algo,
            CAM_CONFIG_NO_USEDK,
            rtlpriv->sec.key_buf[key_index]);
   } else {
    RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
      "set group key\n");

    if (mac->opmode == NL80211_IFTYPE_ADHOC) {
     rtl_cam_add_one_entry(hw,
      rtlefuse->dev_addr,
      PAIRWISE_KEYIDX,
      CAM_PAIRWISE_KEY_POSITION,
      enc_algo,
      CAM_CONFIG_NO_USEDK,
      rtlpriv->sec.key_buf
      [entry_id]);
    }

    rtl_cam_add_one_entry(hw, macaddr, key_index,
      entry_id, enc_algo,
      CAM_CONFIG_NO_USEDK,
      rtlpriv->sec.key_buf[entry_id]);
   }
  }
 }
}

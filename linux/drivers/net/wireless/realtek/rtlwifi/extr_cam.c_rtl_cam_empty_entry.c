
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int pairwise_enc_algorithm; } ;
struct rtl_priv {TYPE_2__* cfg; TYPE_1__ sec; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int* maps; } ;



 int BIT (int) ;
 scalar_t__ CAM_CONTENT_COUNT ;
 int COMP_SEC ;
 int DBG_LOUD ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 size_t RWCAM ;
 size_t SEC_CAM_AES ;
 size_t SEC_CAM_TKIP ;
 size_t SEC_CAM_WEP104 ;
 size_t SEC_CAM_WEP40 ;

 size_t WCAMI ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;

void rtl_cam_empty_entry(struct ieee80211_hw *hw, u8 uc_index)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 u32 ul_command;
 u32 ul_content;
 u32 ul_encalgo = rtlpriv->cfg->maps[SEC_CAM_AES];
 u8 entry_i;

 switch (rtlpriv->sec.pairwise_enc_algorithm) {
 case 128:
  ul_encalgo = rtlpriv->cfg->maps[SEC_CAM_WEP40];
  break;
 case 129:
  ul_encalgo = rtlpriv->cfg->maps[SEC_CAM_WEP104];
  break;
 case 130:
  ul_encalgo = rtlpriv->cfg->maps[SEC_CAM_TKIP];
  break;
 case 131:
  ul_encalgo = rtlpriv->cfg->maps[SEC_CAM_AES];
  break;
 default:
  ul_encalgo = rtlpriv->cfg->maps[SEC_CAM_AES];
 }

 for (entry_i = 0; entry_i < CAM_CONTENT_COUNT; entry_i++) {

  if (entry_i == 0) {
   ul_content =
       (uc_index & 0x03) | ((u16) (ul_encalgo) << 2);
   ul_content |= BIT(15);

  } else {
   ul_content = 0;
  }

  ul_command = CAM_CONTENT_COUNT * uc_index + entry_i;
  ul_command = ul_command | BIT(31) | BIT(16);

  rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[WCAMI], ul_content);
  rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[RWCAM], ul_command);

  RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
    "rtl_cam_empty_entry(): WRITE A4: %x\n",
    ul_content);
  RT_TRACE(rtlpriv, COMP_SEC, DBG_LOUD,
    "rtl_cam_empty_entry(): WRITE A0: %x\n",
    ul_command);
 }

}

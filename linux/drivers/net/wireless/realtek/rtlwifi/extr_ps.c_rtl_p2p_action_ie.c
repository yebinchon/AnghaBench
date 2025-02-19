
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtl_p2p_ps_info {scalar_t__ p2p_ps_mode; int noa_index; int opp_ps; int ctwindow; int noa_num; void** noa_start_time; void** noa_interval; void** noa_duration; int * noa_count_type; } ;
struct TYPE_6__ {scalar_t__ fw_current_inpsmode; struct rtl_p2p_ps_info p2p_ps_info; } ;
struct rtl_priv {TYPE_3__ psc; } ;
struct TYPE_4__ {int category; } ;
struct TYPE_5__ {TYPE_1__ action; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct ieee80211_hw {int dummy; } ;
typedef int __le32 ;
typedef int __le16 ;


 int COMP_FW ;
 int DBG_LOUD ;
 int P2P_MAX_NOA_NUM ;
 scalar_t__ P2P_PS_CTWINDOW ;
 int P2P_PS_DISABLE ;
 int P2P_PS_ENABLE ;
 scalar_t__ P2P_PS_NOA ;
 scalar_t__ P2P_PS_NONE ;
 int READEF1BYTE (int*) ;
 int READEF2BYTE (int *) ;
 void* READEF4BYTE (int *) ;
 int RT_PRINT_DATA (struct rtl_priv*,int ,int ,char*,int*,int) ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 scalar_t__ memcmp (int*,int*,int) ;
 int rtl_p2p_ps_cmd (struct ieee80211_hw*,int ) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void rtl_p2p_action_ie(struct ieee80211_hw *hw, void *data,
         unsigned int len)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct ieee80211_mgmt *mgmt = data;
 struct rtl_p2p_ps_info *p2pinfo = &(rtlpriv->psc.p2p_ps_info);
 u8 noa_num, index , i , noa_index = 0;
 u8 *pos, *end, *ie;
 u16 noa_len;
 static u8 p2p_oui_ie_type[4] = {0x50, 0x6f, 0x9a, 0x09};

 pos = (u8 *)&mgmt->u.action.category;
 end = data + len;
 ie = ((void*)0);

 if (pos[0] == 0x7f) {
  if (memcmp(&pos[1], p2p_oui_ie_type, 4) == 0)
   ie = pos + 3+4;
 }

 if (ie == ((void*)0))
  return;

 RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "action frame find P2P IE.\n");

 while (ie + 1 < end) {
  noa_len = READEF2BYTE((__le16 *)&ie[1]);
  if (ie + 3 + ie[1] > end)
   return;

  if (ie[0] == 12) {
   RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD, "find NOA IE.\n");
   RT_PRINT_DATA(rtlpriv, COMP_FW, DBG_LOUD, "noa ie ",
          ie, noa_len);
   if ((noa_len - 2) % 13 != 0) {
    RT_TRACE(rtlpriv, COMP_FW, DBG_LOUD,
      "P2P notice of absence: invalid length.%d\n",
      noa_len);
    return;
   } else {
    noa_num = (noa_len - 2) / 13;
    if (noa_num > P2P_MAX_NOA_NUM)
     noa_num = P2P_MAX_NOA_NUM;

   }
   noa_index = ie[3];
   if (rtlpriv->psc.p2p_ps_info.p2p_ps_mode ==
       P2P_PS_NONE || noa_index != p2pinfo->noa_index) {
    p2pinfo->noa_index = noa_index;
    p2pinfo->opp_ps = (ie[4] >> 7);
    p2pinfo->ctwindow = ie[4] & 0x7F;
    p2pinfo->noa_num = noa_num;
    index = 5;
    for (i = 0; i < noa_num; i++) {
     p2pinfo->noa_count_type[i] =
       READEF1BYTE(ie+index);
     index += 1;
     p2pinfo->noa_duration[i] =
        READEF4BYTE((__le32 *)ie+index);
     index += 4;
     p2pinfo->noa_interval[i] =
        READEF4BYTE((__le32 *)ie+index);
     index += 4;
     p2pinfo->noa_start_time[i] =
        READEF4BYTE((__le32 *)ie+index);
     index += 4;
    }

    if (p2pinfo->opp_ps == 1) {
     p2pinfo->p2p_ps_mode = P2P_PS_CTWINDOW;



     if (rtlpriv->psc.fw_current_inpsmode)
      rtl_p2p_ps_cmd(hw,
              P2P_PS_ENABLE);
    } else if (p2pinfo->noa_num > 0) {
     p2pinfo->p2p_ps_mode = P2P_PS_NOA;
     rtl_p2p_ps_cmd(hw, P2P_PS_ENABLE);
    } else if (p2pinfo->p2p_ps_mode > P2P_PS_NONE) {
     rtl_p2p_ps_cmd(hw, P2P_PS_DISABLE);
    }
   }
   break;
  }
  ie += 3 + noa_len;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int pairwise_enc_algorithm; } ;
struct rtl_priv {TYPE_2__* cfg; TYPE_1__ sec; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_4__ {int* maps; } ;



 int BIT (int) ;
 int CAM_CONTENT_COUNT ;
 int COMP_SEC ;
 int DBG_DMESG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,int) ;
 size_t RWCAM ;
 size_t SEC_CAM_AES ;
 size_t SEC_CAM_TKIP ;
 size_t SEC_CAM_WEP104 ;
 size_t SEC_CAM_WEP40 ;

 size_t WCAMI ;


 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int,int) ;

void rtl_cam_mark_invalid(struct ieee80211_hw *hw, u8 uc_index)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 u32 ul_command;
 u32 ul_content;
 u32 ul_enc_algo = rtlpriv->cfg->maps[SEC_CAM_AES];

 switch (rtlpriv->sec.pairwise_enc_algorithm) {
 case 128:
  ul_enc_algo = rtlpriv->cfg->maps[SEC_CAM_WEP40];
  break;
 case 129:
  ul_enc_algo = rtlpriv->cfg->maps[SEC_CAM_WEP104];
  break;
 case 130:
  ul_enc_algo = rtlpriv->cfg->maps[SEC_CAM_TKIP];
  break;
 case 131:
  ul_enc_algo = rtlpriv->cfg->maps[SEC_CAM_AES];
  break;
 default:
  ul_enc_algo = rtlpriv->cfg->maps[SEC_CAM_AES];
 }

 ul_content = (uc_index & 3) | ((u16) (ul_enc_algo) << 2);

 ul_content |= BIT(15);
 ul_command = CAM_CONTENT_COUNT * uc_index;
 ul_command = ul_command | BIT(31) | BIT(16);

 rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[WCAMI], ul_content);
 rtl_write_dword(rtlpriv, rtlpriv->cfg->maps[RWCAM], ul_command);

 RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
   "rtl_cam_mark_invalid(): WRITE A4: %x\n", ul_content);
 RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
   "rtl_cam_mark_invalid(): WRITE A0: %x\n", ul_command);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;






 int REG_EDCA_BK_PARAM ;
 int REG_EDCA_VI_PARAM ;
 int REG_EDCA_VO_PARAM ;
 int WARN_ONCE (int,char*,int) ;
 int rtl8723_dm_init_edca_turbo (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

void rtl8723e_set_qos(struct ieee80211_hw *hw, int aci)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);

 rtl8723_dm_init_edca_turbo(hw);
 switch (aci) {
 case 130:
  rtl_write_dword(rtlpriv, REG_EDCA_BK_PARAM, 0xa44f);
  break;
 case 131:
  break;
 case 129:
  rtl_write_dword(rtlpriv, REG_EDCA_VI_PARAM, 0x5e4322);
  break;
 case 128:
  rtl_write_dword(rtlpriv, REG_EDCA_VO_PARAM, 0x2f3222);
  break;
 default:
  WARN_ONCE(1, "rtl8723ae: invalid aci: %d !\n", aci);
  break;
 }
}

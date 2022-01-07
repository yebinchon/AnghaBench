
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;






 int EDCAPARA_BK ;
 int EDCAPARA_VI ;
 int EDCAPARA_VO ;
 int WARN_ONCE (int,char*,int) ;
 int rtl92s_dm_init_edca_turbo (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_write_dword (struct rtl_priv*,int ,int) ;

void rtl92se_set_qos(struct ieee80211_hw *hw, int aci)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 rtl92s_dm_init_edca_turbo(hw);

 switch (aci) {
 case 130:
  rtl_write_dword(rtlpriv, EDCAPARA_BK, 0xa44f);
  break;
 case 131:

  break;
 case 129:
  rtl_write_dword(rtlpriv, EDCAPARA_VI, 0x5e4322);
  break;
 case 128:
  rtl_write_dword(rtlpriv, EDCAPARA_VO, 0x2f3222);
  break;
 default:
  WARN_ONCE(1, "rtl8192se: invalid aci: %d !\n", aci);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct rtl_phy {scalar_t__*** txpwr_by_rate_base_24g; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;


 scalar_t__ BAND_ON_2_4G ;

 int COMP_INIT ;
 int DBG_LOUD ;



 scalar_t__ RF90_PATH_D ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,scalar_t__,...) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

__attribute__((used)) static void _rtl92ee_phy_set_txpower_by_rate_base(struct ieee80211_hw *hw,
        u8 band, u8 path,
        u8 rate_section, u8 txnum,
        u8 value)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;

 if (path > RF90_PATH_D) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Invalid Rf Path %d\n", path);
  return;
 }

 if (band == BAND_ON_2_4G) {
  switch (rate_section) {
  case 131:
   rtlphy->txpwr_by_rate_base_24g[path][txnum][0] = value;
   break;
  case 128:
   rtlphy->txpwr_by_rate_base_24g[path][txnum][1] = value;
   break;
  case 130:
   rtlphy->txpwr_by_rate_base_24g[path][txnum][2] = value;
   break;
  case 129:
   rtlphy->txpwr_by_rate_base_24g[path][txnum][3] = value;
   break;
  default:
   RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
     "Invalid RateSection %d in 2.4G,Rf %d,%dTx\n",
      rate_section, path, txnum);
   break;
  }
 } else {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Invalid Band %d\n", band);
 }
}

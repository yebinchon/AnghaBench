
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

__attribute__((used)) static u8 _rtl92ee_phy_get_txpower_by_rate_base(struct ieee80211_hw *hw,
      u8 band, u8 path, u8 txnum,
      u8 rate_section)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 u8 value = 0;

 if (path > RF90_PATH_D) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Invalid Rf Path %d\n", path);
  return 0;
 }

 if (band == BAND_ON_2_4G) {
  switch (rate_section) {
  case 131:
   value = rtlphy->txpwr_by_rate_base_24g[path][txnum][0];
   break;
  case 128:
   value = rtlphy->txpwr_by_rate_base_24g[path][txnum][1];
   break;
  case 130:
   value = rtlphy->txpwr_by_rate_base_24g[path][txnum][2];
   break;
  case 129:
   value = rtlphy->txpwr_by_rate_base_24g[path][txnum][3];
   break;
  default:
   RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
     "Invalid RateSection %d in 2.4G,Rf %d,%dTx\n",
      rate_section, path, txnum);
   break;
  }
 } else {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "Invalid Band %d()\n", band);
 }
 return value;
}

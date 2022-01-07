
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum version_8192d { ____Placeholder_version_8192d } version_8192d ;


 int COMP_INIT ;
 int DBG_LOUD ;
 int REG_SYS_CFG ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int VERSION_NORMAL_CHIP_92D_SINGLEPHY ;
 int VERSION_TEST_CHIP_92D_SINGLEPHY ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_dword (struct rtl_priv*,int ) ;

__attribute__((used)) static enum version_8192d _rtl92de_read_chip_version(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 enum version_8192d version = VERSION_NORMAL_CHIP_92D_SINGLEPHY;
 u32 value32;

 value32 = rtl_read_dword(rtlpriv, REG_SYS_CFG);
 if (!(value32 & 0x000f0000)) {
  version = VERSION_TEST_CHIP_92D_SINGLEPHY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "TEST CHIP!!!\n");
 } else {
  version = VERSION_NORMAL_CHIP_92D_SINGLEPHY;
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD, "Normal CHIP!!!\n");
 }
 return version;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtl_priv {int dummy; } ;
struct ieee80211_hw {int dummy; } ;


 int BIT (int) ;
 int COMP_INIT ;
 int DBG_LOUD ;
 scalar_t__ REG_DBI_CTRL ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*) ;
 int mdelay (int) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int rtl_read_byte (struct rtl_priv*,scalar_t__) ;
 int rtl_write_byte (struct rtl_priv*,scalar_t__,int) ;

__attribute__((used)) static bool _rtl8821ae_check_pcie_dma_hang(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 u8 tmp;


 tmp = rtl_read_byte(rtlpriv, REG_DBI_CTRL + 3);
 if (!(tmp & BIT(2))) {
  rtl_write_byte(rtlpriv, REG_DBI_CTRL + 3, (tmp | BIT(2)));
  mdelay(100);
 }



 tmp = rtl_read_byte(rtlpriv, REG_DBI_CTRL + 3);
 if ((tmp & BIT(0)) || (tmp & BIT(1))) {
  RT_TRACE(rtlpriv, COMP_INIT, DBG_LOUD,
    "CheckPcieDMAHang8821AE(): true! Reset PCIE DMA!\n");
  return 1;
 } else {
  return 0;
 }
}

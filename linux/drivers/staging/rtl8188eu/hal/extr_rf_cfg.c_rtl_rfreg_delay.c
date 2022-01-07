
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;
typedef enum rf_radio_path { ____Placeholder_rf_radio_path } rf_radio_path ;


 int mdelay (int) ;
 int phy_set_rf_reg (struct adapter*,int,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtl_rfreg_delay(struct adapter *adapt, enum rf_radio_path rfpath, u32 addr, u32 mask, u32 data)
{
 if (addr == 0xfe) {
  mdelay(50);
 } else if (addr == 0xfd) {
  mdelay(5);
 } else if (addr == 0xfc) {
  mdelay(1);
 } else if (addr == 0xfb) {
  udelay(50);
 } else if (addr == 0xfa) {
  udelay(5);
 } else if (addr == 0xf9) {
  udelay(1);
 } else {
  phy_set_rf_reg(adapt, rfpath, addr, mask, data);
  udelay(1);
 }
}

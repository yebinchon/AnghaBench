
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int bMaskDWord ;
 int mdelay (int) ;
 int msleep (int) ;
 int phy_set_bb_reg (struct adapter*,int,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void rtl_bb_delay(struct adapter *adapt, u32 addr, u32 data)
{
 if (addr == 0xfe) {
  msleep(50);
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
  phy_set_bb_reg(adapt, addr, bMaskDWord, data);

  udelay(1);
 }
}

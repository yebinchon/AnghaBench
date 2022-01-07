
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ns2_phy_driver {int icfgdrd_regs; } ;


 int EBUSY ;
 int PLL_LOCK_RETRY ;
 int readl (int) ;
 int udelay (int) ;

__attribute__((used)) static inline int pll_lock_stat(u32 usb_reg, int reg_mask,
    struct ns2_phy_driver *driver)
{
 int retry = PLL_LOCK_RETRY;
 u32 val;

 do {
  udelay(1);
  val = readl(driver->icfgdrd_regs + usb_reg);
  if (val & reg_mask)
   return 0;
 } while (--retry > 0);

 return -EBUSY;
}

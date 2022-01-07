
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct samsung_usb2_phy_instance {TYPE_1__* cfg; struct samsung_usb2_phy_driver* drv; } ;
struct samsung_usb2_phy_driver {int ref_reg_val; scalar_t__ reg_phy; } ;
struct TYPE_2__ {int id; } ;




 scalar_t__ S5PV210_UPHYCLK ;
 scalar_t__ S5PV210_UPHYPWR ;
 int S5PV210_UPHYPWR_PHY0 ;
 int S5PV210_UPHYPWR_PHY1 ;
 scalar_t__ S5PV210_UPHYRST ;
 int S5PV210_URSTCON_HOST_LINK_ALL ;
 int S5PV210_URSTCON_PHY0 ;
 int S5PV210_URSTCON_PHY1_ALL ;
 int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s5pv210_phy_pwr(struct samsung_usb2_phy_instance *inst, bool on)
{
 struct samsung_usb2_phy_driver *drv = inst->drv;
 u32 rstbits = 0;
 u32 phypwr = 0;
 u32 rst;
 u32 pwr;

 switch (inst->cfg->id) {
 case 129:
  phypwr = S5PV210_UPHYPWR_PHY0;
  rstbits = S5PV210_URSTCON_PHY0;
  break;
 case 128:
  phypwr = S5PV210_UPHYPWR_PHY1;
  rstbits = S5PV210_URSTCON_PHY1_ALL |
    S5PV210_URSTCON_HOST_LINK_ALL;
  break;
 }

 if (on) {
  writel(drv->ref_reg_val, drv->reg_phy + S5PV210_UPHYCLK);

  pwr = readl(drv->reg_phy + S5PV210_UPHYPWR);
  pwr &= ~phypwr;
  writel(pwr, drv->reg_phy + S5PV210_UPHYPWR);

  rst = readl(drv->reg_phy + S5PV210_UPHYRST);
  rst |= rstbits;
  writel(rst, drv->reg_phy + S5PV210_UPHYRST);
  udelay(10);
  rst &= ~rstbits;
  writel(rst, drv->reg_phy + S5PV210_UPHYRST);
 } else {
  pwr = readl(drv->reg_phy + S5PV210_UPHYPWR);
  pwr |= phypwr;
  writel(pwr, drv->reg_phy + S5PV210_UPHYPWR);
 }
}

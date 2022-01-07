
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_control_phy {int otghs_control; } ;


 int OMAP_CTRL_DEV_AVALID ;
 int OMAP_CTRL_DEV_IDDIG ;
 int OMAP_CTRL_DEV_SESSEND ;
 int OMAP_CTRL_DEV_VBUSVALID ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void omap_control_usb_host_mode(struct omap_control_phy *ctrl_phy)
{
 u32 val;

 val = readl(ctrl_phy->otghs_control);
 val &= ~(OMAP_CTRL_DEV_IDDIG | OMAP_CTRL_DEV_SESSEND);
 val |= OMAP_CTRL_DEV_AVALID | OMAP_CTRL_DEV_VBUSVALID;
 writel(val, ctrl_phy->otghs_control);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy {int dummy; } ;
struct ns2_phy_driver {scalar_t__ icfgdrd_regs; scalar_t__ crmu_usb2_ctrl; } ;
struct ns2_phy_data {struct ns2_phy_driver* driver; } ;


 int AFE_CORERDY_VDDC ;
 int DRD_DEVICE_MODE ;
 int DRD_DEV_MODE ;
 int DRD_HOST_MODE ;
 scalar_t__ ICFG_FSM_CTRL ;
 int ICFG_OFF_MODE ;
 struct ns2_phy_data* phy_get_drvdata (struct phy*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int ns2_drd_phy_poweroff(struct phy *phy)
{
 struct ns2_phy_data *data = phy_get_drvdata(phy);
 struct ns2_phy_driver *driver = data->driver;
 u32 val;

 val = readl(driver->crmu_usb2_ctrl);
 val &= ~AFE_CORERDY_VDDC;
 writel(val, driver->crmu_usb2_ctrl);

 val = readl(driver->crmu_usb2_ctrl);
 val &= ~DRD_DEV_MODE;
 writel(val, driver->crmu_usb2_ctrl);


 val = readl(driver->icfgdrd_regs + ICFG_FSM_CTRL);
 val &= ~(DRD_HOST_MODE | DRD_DEVICE_MODE | ICFG_OFF_MODE);
 writel(val, driver->icfgdrd_regs + ICFG_FSM_CTRL);

 return 0;
}

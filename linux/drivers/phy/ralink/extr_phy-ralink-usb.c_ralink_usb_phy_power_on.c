
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ralink_usb_phy {TYPE_1__* phy; int sysctl; scalar_t__ base; int rstdev; int rsthost; int clk; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int RT_SYSCFG1_USB0_HOST_MODE ;
 int RT_SYSC_REG_CLKCFG1 ;
 int RT_SYSC_REG_SYSCFG1 ;
 int RT_SYSC_REG_USB_PHY_CFG ;
 int UDEV_WAKEUP ;
 int USB_PHY_UTMI_8B60M ;
 int dev_info (int *,char*,...) ;
 int mdelay (int) ;
 struct ralink_usb_phy* phy_get_drvdata (struct phy*) ;
 int ralink_usb_phy_init (struct ralink_usb_phy*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int ralink_usb_phy_power_on(struct phy *_phy)
{
 struct ralink_usb_phy *phy = phy_get_drvdata(_phy);
 u32 t;


 regmap_update_bits(phy->sysctl, RT_SYSC_REG_CLKCFG1,
      phy->clk, phy->clk);


 regmap_update_bits(phy->sysctl, RT_SYSC_REG_SYSCFG1,
      RT_SYSCFG1_USB0_HOST_MODE,
      RT_SYSCFG1_USB0_HOST_MODE);


 reset_control_deassert(phy->rsthost);
 reset_control_deassert(phy->rstdev);





 mdelay(10);

 if (phy->base)
  ralink_usb_phy_init(phy);


 regmap_read(phy->sysctl, RT_SYSC_REG_USB_PHY_CFG, &t);
 dev_info(&phy->phy->dev, "remote usb device wakeup %s\n",
  (t & UDEV_WAKEUP) ? ("enabled") : ("disabled"));
 if (t & USB_PHY_UTMI_8B60M)
  dev_info(&phy->phy->dev, "UTMI 8bit 60MHz\n");
 else
  dev_info(&phy->phy->dev, "UTMI 16bit 30MHz\n");

 return 0;
}

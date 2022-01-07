
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_usb {int dev; } ;


 int AB8500_BIT_PHY_CTRL_DEVICE_EN ;
 int AB8500_BIT_PHY_CTRL_HOST_EN ;
 int AB8500_USB ;
 int AB8500_USB_PHY_CTRL_REG ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void ab8500_usb_restart_phy(struct ab8500_usb *ab)
{
 abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_USB, AB8500_USB_PHY_CTRL_REG,
   AB8500_BIT_PHY_CTRL_DEVICE_EN,
   AB8500_BIT_PHY_CTRL_DEVICE_EN);

 udelay(100);

 abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_USB, AB8500_USB_PHY_CTRL_REG,
   AB8500_BIT_PHY_CTRL_DEVICE_EN,
   0);

 abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_USB, AB8500_USB_PHY_CTRL_REG,
   AB8500_BIT_PHY_CTRL_HOST_EN,
   AB8500_BIT_PHY_CTRL_HOST_EN);

 udelay(100);

 abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_USB, AB8500_USB_PHY_CTRL_REG,
   AB8500_BIT_PHY_CTRL_HOST_EN,
   0);
}

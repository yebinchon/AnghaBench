
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab8500_usb {int dev; int sysclk; int pinctrl; } ;


 int AB8500_BIT_PHY_CTRL_DEVICE_EN ;
 int AB8500_BIT_PHY_CTRL_HOST_EN ;
 int AB8500_USB ;
 int AB8500_USB_PHY_CTRL_REG ;
 scalar_t__ IS_ERR (int ) ;
 int PINCTRL_STATE_DEFAULT ;
 int ab8500_usb_regulator_enable (struct ab8500_usb*) ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 scalar_t__ clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int pinctrl_get_select (int ,int ) ;

__attribute__((used)) static void ab8500_usb_phy_enable(struct ab8500_usb *ab, bool sel_host)
{
 u8 bit;
 bit = sel_host ? AB8500_BIT_PHY_CTRL_HOST_EN :
  AB8500_BIT_PHY_CTRL_DEVICE_EN;


 ab->pinctrl = pinctrl_get_select(ab->dev, PINCTRL_STATE_DEFAULT);
 if (IS_ERR(ab->pinctrl))
  dev_err(ab->dev, "could not get/set default pinstate\n");

 if (clk_prepare_enable(ab->sysclk))
  dev_err(ab->dev, "can't prepare/enable clock\n");

 ab8500_usb_regulator_enable(ab);

 abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_USB, AB8500_USB_PHY_CTRL_REG,
   bit, bit);
}

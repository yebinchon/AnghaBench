
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab8500_usb {int pinctrl; int dev; int pins_sleep; int sysclk; } ;


 int AB8500_BIT_PHY_CTRL_DEVICE_EN ;
 int AB8500_BIT_PHY_CTRL_HOST_EN ;
 int AB8500_USB ;
 int AB8500_USB_PHY_CTRL_REG ;
 scalar_t__ IS_ERR (int ) ;
 int PINCTRL_STATE_SLEEP ;
 int ab8500_usb_regulator_disable (struct ab8500_usb*) ;
 int ab8500_usb_wd_linkstatus (struct ab8500_usb*,int ) ;
 int ab8500_usb_wd_workaround (struct ab8500_usb*) ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 int clk_disable_unprepare (int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int pinctrl_lookup_state (int ,int ) ;
 int pinctrl_put (int ) ;
 scalar_t__ pinctrl_select_state (int ,int ) ;

__attribute__((used)) static void ab8500_usb_phy_disable(struct ab8500_usb *ab, bool sel_host)
{
 u8 bit;
 bit = sel_host ? AB8500_BIT_PHY_CTRL_HOST_EN :
  AB8500_BIT_PHY_CTRL_DEVICE_EN;

 ab8500_usb_wd_linkstatus(ab, bit);

 abx500_mask_and_set_register_interruptible(ab->dev,
   AB8500_USB, AB8500_USB_PHY_CTRL_REG,
   bit, 0);


 ab8500_usb_wd_workaround(ab);

 clk_disable_unprepare(ab->sysclk);

 ab8500_usb_regulator_disable(ab);

 if (!IS_ERR(ab->pinctrl)) {

  ab->pins_sleep = pinctrl_lookup_state(ab->pinctrl,
    PINCTRL_STATE_SLEEP);

  if (IS_ERR(ab->pins_sleep))
   dev_dbg(ab->dev, "could not get sleep pinstate\n");
  else if (pinctrl_select_state(ab->pinctrl, ab->pins_sleep))
   dev_err(ab->dev, "could not set pins to sleep state\n");





  pinctrl_put(ab->pinctrl);
 }
}

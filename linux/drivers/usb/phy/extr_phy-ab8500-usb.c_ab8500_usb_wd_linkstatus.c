
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab8500_usb {int dev; int ab8500; } ;


 int AB8500_USB ;
 int AB8500_USB_PHY_CTRL_REG ;
 int AB8500_V20_31952_DISABLE_DELAY_US ;
 int abx500_mask_and_set_register_interruptible (int ,int ,int ,int ,int ) ;
 scalar_t__ is_ab8500_2p0 (int ) ;
 int udelay (int ) ;

__attribute__((used)) static void ab8500_usb_wd_linkstatus(struct ab8500_usb *ab, u8 bit)
{

 if (is_ab8500_2p0(ab->ab8500)) {
  abx500_mask_and_set_register_interruptible(ab->dev,
    AB8500_USB, AB8500_USB_PHY_CTRL_REG,
    bit, bit);
  udelay(AB8500_V20_31952_DISABLE_DELAY_US);
 }
}

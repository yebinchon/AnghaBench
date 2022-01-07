
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ab8500_usb {int dev; int ab8500; } ;
typedef enum ab8505_usb_link_status { ____Placeholder_ab8505_usb_link_status } ab8505_usb_link_status ;
typedef enum ab8500_usb_link_status { ____Placeholder_ab8500_usb_link_status } ab8500_usb_link_status ;


 int AB8500_USB ;
 int AB8500_USB_LINE_STAT_REG ;
 int AB8505_USB_LINE_STAT_REG ;
 int ab8500_usb_link_status_update (struct ab8500_usb*,int) ;
 int ab8505_usb_link_status_update (struct ab8500_usb*,int) ;
 int abx500_get_register_interruptible (int ,int ,int ,int*) ;
 scalar_t__ is_ab8500 (int ) ;
 scalar_t__ is_ab8505 (int ) ;

__attribute__((used)) static int abx500_usb_link_status_update(struct ab8500_usb *ab)
{
 u8 reg;
 int ret = 0;

 if (is_ab8500(ab->ab8500)) {
  enum ab8500_usb_link_status lsts;

  ret = abx500_get_register_interruptible(ab->dev,
    AB8500_USB, AB8500_USB_LINE_STAT_REG, &reg);
  if (ret < 0)
   return ret;
  lsts = (reg >> 3) & 0x0F;
  ret = ab8500_usb_link_status_update(ab, lsts);
 } else if (is_ab8505(ab->ab8500)) {
  enum ab8505_usb_link_status lsts;

  ret = abx500_get_register_interruptible(ab->dev,
    AB8500_USB, AB8505_USB_LINE_STAT_REG, &reg);
  if (ret < 0)
   return ret;
  lsts = (reg >> 3) & 0x1F;
  ret = ab8505_usb_link_status_update(ab, lsts);
 }

 return ret;
}

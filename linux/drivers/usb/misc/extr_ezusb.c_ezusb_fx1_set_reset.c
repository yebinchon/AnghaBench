
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device {int dummy; } ;
struct TYPE_2__ {int cpucs_reg; } ;


 TYPE_1__ ezusb_fx1 ;
 int ezusb_set_reset (struct usb_device*,int ,unsigned char) ;

int ezusb_fx1_set_reset(struct usb_device *dev, unsigned char reset_bit)
{
 return ezusb_set_reset(dev, ezusb_fx1.cpucs_reg, reset_bit);
}

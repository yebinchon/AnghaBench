
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* root_hub; scalar_t__ sg_tablesize; } ;
struct usb_hcd {TYPE_2__ self; int speed; } ;
struct max3421_hcd {int spi_thread; int todo; } ;
struct TYPE_3__ {int speed; } ;


 int HCD_USB2 ;
 int RESET_HCD ;
 int USB_SPEED_FULL ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int set_bit (int ,int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int
max3421_reset(struct usb_hcd *hcd)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);

 hcd->self.sg_tablesize = 0;
 hcd->speed = HCD_USB2;
 hcd->self.root_hub->speed = USB_SPEED_FULL;
 set_bit(RESET_HCD, &max3421_hcd->todo);
 wake_up_process(max3421_hcd->spi_thread);
 return 0;
}

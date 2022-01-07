
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct max3421_hcd {int port_status; int spi_thread; int todo; } ;


 int RESET_PORT ;
 int USB_PORT_STAT_ENABLE ;
 int USB_PORT_STAT_LOW_SPEED ;
 int USB_PORT_STAT_RESET ;
 struct max3421_hcd* hcd_to_max3421 (struct usb_hcd*) ;
 int set_bit (int ,int *) ;
 int wake_up_process (int ) ;

__attribute__((used)) static int
max3421_reset_port(struct usb_hcd *hcd)
{
 struct max3421_hcd *max3421_hcd = hcd_to_max3421(hcd);

 max3421_hcd->port_status &= ~(USB_PORT_STAT_ENABLE |
          USB_PORT_STAT_LOW_SPEED);
 max3421_hcd->port_status |= USB_PORT_STAT_RESET;
 set_bit(RESET_PORT, &max3421_hcd->todo);
 wake_up_process(max3421_hcd->spi_thread);
 return 0;
}

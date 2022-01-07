
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB3_USB_INT_ENA_2 ;
 int USB_INT_2_PIPE (int) ;
 int usb3_set_bit (struct renesas_usb3*,int ,int ) ;

__attribute__((used)) static void usb3_enable_pipe_irq(struct renesas_usb3 *usb3, int num)
{
 usb3_set_bit(usb3, USB_INT_2_PIPE(num), USB3_USB_INT_ENA_2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int USB_INT_1_B2_RSUM ;
 int usb3_disable_irq_1 (struct renesas_usb3*,int ) ;
 int usb3_start_usb2_connection (struct renesas_usb3*) ;
 int usb3_transition_to_default_state (struct renesas_usb3*,int) ;

__attribute__((used)) static void usb3_irq_epc_int_1_resume(struct renesas_usb3 *usb3)
{
 usb3_disable_irq_1(usb3, USB_INT_1_B2_RSUM);
 usb3_start_usb2_connection(usb3);
 usb3_transition_to_default_state(usb3, 0);
}

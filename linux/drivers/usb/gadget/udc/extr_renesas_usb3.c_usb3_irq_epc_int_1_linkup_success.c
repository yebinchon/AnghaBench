
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int usb3_transition_to_default_state (struct renesas_usb3*,int) ;

__attribute__((used)) static void usb3_irq_epc_int_1_linkup_success(struct renesas_usb3 *usb3)
{
 usb3_transition_to_default_state(usb3, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct renesas_usb3 {int num_usb3_eps; } ;


 int USB_INT_2_PIPE (int) ;
 int usb3_irq_epc_pipe0 (struct renesas_usb3*) ;
 int usb3_irq_epc_pipen (struct renesas_usb3*,int) ;

__attribute__((used)) static void usb3_irq_epc_int_2(struct renesas_usb3 *usb3, u32 int_sta_2)
{
 int i;

 for (i = 0; i < usb3->num_usb3_eps; i++) {
  if (int_sta_2 & USB_INT_2_PIPE(i)) {
   if (!i)
    usb3_irq_epc_pipe0(usb3);
   else
    usb3_irq_epc_pipen(usb3, i);
  }
 }
}

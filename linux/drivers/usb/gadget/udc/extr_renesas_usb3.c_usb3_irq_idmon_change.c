
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct renesas_usb3 {int dummy; } ;


 int usb3_check_id (struct renesas_usb3*) ;

__attribute__((used)) static void usb3_irq_idmon_change(struct renesas_usb3 *usb3)
{
 usb3_check_id(usb3);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500_usb {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int abx500_usb_link_status_update (struct ab8500_usb*) ;

__attribute__((used)) static irqreturn_t ab8500_usb_link_status_irq(int irq, void *data)
{
 struct ab8500_usb *ab = (struct ab8500_usb *)data;

 abx500_usb_link_status_update(ab);

 return IRQ_HANDLED;
}

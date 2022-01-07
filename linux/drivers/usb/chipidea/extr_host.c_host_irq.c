
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int hcd; int irq; } ;
typedef int irqreturn_t ;


 int usb_hcd_irq (int ,int ) ;

__attribute__((used)) static irqreturn_t host_irq(struct ci_hdrc *ci)
{
 return usb_hcd_irq(ci->irq, ci->hcd);
}

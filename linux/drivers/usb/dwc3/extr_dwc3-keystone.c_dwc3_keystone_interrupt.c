
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwc3_keystone {int usbss; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int USBSS_IRQENABLE_CLR_0 ;
 int USBSS_IRQENABLE_SET_0 ;
 int USBSS_IRQSTATUS_0 ;
 int USBSS_IRQ_COREIRQ_CLR ;
 int USBSS_IRQ_COREIRQ_EN ;
 int USBSS_IRQ_EOI ;
 int USBSS_IRQ_EOI_LINE (int ) ;
 int USBSS_IRQ_EVENT_ST ;
 int kdwc3_writel (int ,int ,int ) ;

__attribute__((used)) static irqreturn_t dwc3_keystone_interrupt(int irq, void *_kdwc)
{
 struct dwc3_keystone *kdwc = _kdwc;

 kdwc3_writel(kdwc->usbss, USBSS_IRQENABLE_CLR_0, USBSS_IRQ_COREIRQ_CLR);
 kdwc3_writel(kdwc->usbss, USBSS_IRQSTATUS_0, USBSS_IRQ_EVENT_ST);
 kdwc3_writel(kdwc->usbss, USBSS_IRQENABLE_SET_0, USBSS_IRQ_COREIRQ_EN);
 kdwc3_writel(kdwc->usbss, USBSS_IRQ_EOI, USBSS_IRQ_EOI_LINE(0));

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dwc3_keystone {int usbss; } ;


 int USBSS_IRQENABLE_SET_0 ;
 int USBSS_IRQ_COREIRQ_EN ;
 int kdwc3_readl (int ,int ) ;
 int kdwc3_writel (int ,int ,int ) ;

__attribute__((used)) static void kdwc3_disable_irqs(struct dwc3_keystone *kdwc)
{
 u32 val;

 val = kdwc3_readl(kdwc->usbss, USBSS_IRQENABLE_SET_0);
 val &= ~USBSS_IRQ_COREIRQ_EN;
 kdwc3_writel(kdwc->usbss, USBSS_IRQENABLE_SET_0, val);
}

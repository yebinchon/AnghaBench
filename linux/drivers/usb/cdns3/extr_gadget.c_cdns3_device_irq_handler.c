
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cdns3_device {TYPE_1__* regs; } ;
struct cdns3 {struct cdns3_device* gadget_dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int ep_ien; int ep_ists; int usb_ien; int usb_ists; } ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static irqreturn_t cdns3_device_irq_handler(int irq, void *data)
{
 struct cdns3_device *priv_dev;
 struct cdns3 *cdns = data;
 irqreturn_t ret = IRQ_NONE;
 u32 reg;

 priv_dev = cdns->gadget_dev;


 reg = readl(&priv_dev->regs->usb_ists);
 if (reg) {







  reg = ~reg & readl(&priv_dev->regs->usb_ien);

  writel(reg, &priv_dev->regs->usb_ien);
  ret = IRQ_WAKE_THREAD;
 }


 reg = readl(&priv_dev->regs->ep_ists);
 if (reg) {
  writel(0, &priv_dev->regs->ep_ien);
  ret = IRQ_WAKE_THREAD;
 }

 return ret;
}

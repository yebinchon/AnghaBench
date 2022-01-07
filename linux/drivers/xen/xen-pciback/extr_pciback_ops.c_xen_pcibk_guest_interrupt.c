
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_pcibk_dev_data {int handled; scalar_t__ ack_intr; int irq_name; scalar_t__ isr_on; } ;
struct pci_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct xen_pcibk_dev_data* pci_get_drvdata (struct pci_dev*) ;
 int pr_info (char*,int ) ;
 scalar_t__ xen_test_irq_shared (int) ;

__attribute__((used)) static irqreturn_t xen_pcibk_guest_interrupt(int irq, void *dev_id)
{
 struct pci_dev *dev = (struct pci_dev *)dev_id;
 struct xen_pcibk_dev_data *dev_data = pci_get_drvdata(dev);

 if (dev_data->isr_on && dev_data->ack_intr) {
  dev_data->handled++;
  if ((dev_data->handled % 1000) == 0) {
   if (xen_test_irq_shared(irq)) {
    pr_info("%s IRQ line is not shared "
     "with other domains. Turning ISR off\n",
      dev_data->irq_name);
    dev_data->ack_intr = 0;
   }
  }
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}

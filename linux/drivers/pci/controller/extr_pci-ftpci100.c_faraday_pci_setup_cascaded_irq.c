
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct faraday_pci {int irqdomain; TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int of_node; } ;


 int EINVAL ;
 int PCI_NUM_INTX ;
 int dev_err (TYPE_1__*,char*) ;
 int faraday_pci_irq_handler ;
 int faraday_pci_irqdomain_ops ;
 int irq_create_mapping (int ,int) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct faraday_pci*) ;
 int irq_set_chained_handler_and_data (int,int ,struct faraday_pci*) ;
 struct device_node* of_get_next_child (int ,int *) ;
 int of_irq_get (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int faraday_pci_setup_cascaded_irq(struct faraday_pci *p)
{
 struct device_node *intc = of_get_next_child(p->dev->of_node, ((void*)0));
 int irq;
 int i;

 if (!intc) {
  dev_err(p->dev, "missing child interrupt-controller node\n");
  return -EINVAL;
 }


 irq = of_irq_get(intc, 0);
 if (irq <= 0) {
  dev_err(p->dev, "failed to get parent IRQ\n");
  of_node_put(intc);
  return irq ?: -EINVAL;
 }

 p->irqdomain = irq_domain_add_linear(intc, PCI_NUM_INTX,
          &faraday_pci_irqdomain_ops, p);
 of_node_put(intc);
 if (!p->irqdomain) {
  dev_err(p->dev, "failed to create Gemini PCI IRQ domain\n");
  return -EINVAL;
 }

 irq_set_chained_handler_and_data(irq, faraday_pci_irq_handler, p);

 for (i = 0; i < 4; i++)
  irq_create_mapping(p->irqdomain, i);

 return 0;
}

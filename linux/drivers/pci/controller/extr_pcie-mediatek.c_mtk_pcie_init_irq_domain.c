
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pcie_port {int irq_domain; TYPE_1__* pcie; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int CONFIG_PCI_MSI ;
 int ENODEV ;
 scalar_t__ IS_ENABLED (int ) ;
 int PCI_NUM_INTX ;
 int dev_err (struct device*,char*) ;
 int intx_domain_ops ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct mtk_pcie_port*) ;
 int mtk_pcie_allocate_msi_domains (struct mtk_pcie_port*) ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int mtk_pcie_init_irq_domain(struct mtk_pcie_port *port,
        struct device_node *node)
{
 struct device *dev = port->pcie->dev;
 struct device_node *pcie_intc_node;
 int ret;


 pcie_intc_node = of_get_next_child(node, ((void*)0));
 if (!pcie_intc_node) {
  dev_err(dev, "no PCIe Intc node found\n");
  return -ENODEV;
 }

 port->irq_domain = irq_domain_add_linear(pcie_intc_node, PCI_NUM_INTX,
       &intx_domain_ops, port);
 of_node_put(pcie_intc_node);
 if (!port->irq_domain) {
  dev_err(dev, "failed to get INTx IRQ domain\n");
  return -ENODEV;
 }

 if (IS_ENABLED(CONFIG_PCI_MSI)) {
  ret = mtk_pcie_allocate_msi_domains(port);
  if (ret)
   return ret;
 }

 return 0;
}

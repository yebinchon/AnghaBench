
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilinx_pcie_port {void* msi_domain; void* leg_domain; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;


 int CONFIG_PCI_MSI ;
 int ENODEV ;
 scalar_t__ IS_ENABLED (int ) ;
 int PCI_NUM_INTX ;
 int XILINX_NUM_MSI_IRQS ;
 int dev_err (struct device*,char*) ;
 int intx_domain_ops ;
 void* irq_domain_add_linear (struct device_node*,int ,int *,struct xilinx_pcie_port*) ;
 int msi_domain_ops ;
 struct device_node* of_get_next_child (struct device_node*,int *) ;
 int of_node_put (struct device_node*) ;
 int xilinx_pcie_enable_msi (struct xilinx_pcie_port*) ;
 struct xilinx_pcie_port xilinx_pcie_msi_chip ;

__attribute__((used)) static int xilinx_pcie_init_irq_domain(struct xilinx_pcie_port *port)
{
 struct device *dev = port->dev;
 struct device_node *node = dev->of_node;
 struct device_node *pcie_intc_node;
 int ret;


 pcie_intc_node = of_get_next_child(node, ((void*)0));
 if (!pcie_intc_node) {
  dev_err(dev, "No PCIe Intc node found\n");
  return -ENODEV;
 }

 port->leg_domain = irq_domain_add_linear(pcie_intc_node, PCI_NUM_INTX,
       &intx_domain_ops,
       port);
 of_node_put(pcie_intc_node);
 if (!port->leg_domain) {
  dev_err(dev, "Failed to get a INTx IRQ domain\n");
  return -ENODEV;
 }


 if (IS_ENABLED(CONFIG_PCI_MSI)) {
  port->msi_domain = irq_domain_add_linear(node,
        XILINX_NUM_MSI_IRQS,
        &msi_domain_ops,
        &xilinx_pcie_msi_chip);
  if (!port->msi_domain) {
   dev_err(dev, "Failed to get a MSI IRQ domain\n");
   return -ENODEV;
  }

  ret = xilinx_pcie_enable_msi(port);
  if (ret)
   return ret;
 }

 return 0;
}

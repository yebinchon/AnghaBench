
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_pcie {int irq_domain; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int of_node; } ;


 int EINVAL ;
 int PCI_NUM_INTX ;
 int dev_err (struct device*,char*) ;
 int intx_domain_ops ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct rockchip_pcie*) ;
 struct device_node* of_get_next_child (int ,int *) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int rockchip_pcie_init_irq_domain(struct rockchip_pcie *rockchip)
{
 struct device *dev = rockchip->dev;
 struct device_node *intc = of_get_next_child(dev->of_node, ((void*)0));

 if (!intc) {
  dev_err(dev, "missing child interrupt-controller node\n");
  return -EINVAL;
 }

 rockchip->irq_domain = irq_domain_add_linear(intc, PCI_NUM_INTX,
          &intx_domain_ops, rockchip);
 of_node_put(intc);
 if (!rockchip->irq_domain) {
  dev_err(dev, "failed to get a INTx IRQ domain\n");
  return -EINVAL;
 }

 return 0;
}

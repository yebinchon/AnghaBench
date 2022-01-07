
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uniphier_pcie_priv {int legacy_irq_domain; } ;
struct pcie_port {int irq; } ;
struct dw_pcie {TYPE_1__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;


 int EINVAL ;
 int ENODEV ;
 int PCI_NUM_INTX ;
 int dev_err (TYPE_1__*,char*) ;
 int irq_domain_add_linear (struct device_node*,int ,int *,struct pcie_port*) ;
 int irq_of_parse_and_map (struct device_node*,int ) ;
 int irq_set_chained_handler_and_data (int ,int ,struct pcie_port*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct uniphier_pcie_priv* to_uniphier_pcie (struct dw_pcie*) ;
 int uniphier_intx_domain_ops ;
 int uniphier_pcie_irq_handler ;

__attribute__((used)) static int uniphier_pcie_config_legacy_irq(struct pcie_port *pp)
{
 struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 struct uniphier_pcie_priv *priv = to_uniphier_pcie(pci);
 struct device_node *np = pci->dev->of_node;
 struct device_node *np_intc;
 int ret = 0;

 np_intc = of_get_child_by_name(np, "legacy-interrupt-controller");
 if (!np_intc) {
  dev_err(pci->dev, "Failed to get legacy-interrupt-controller node\n");
  return -EINVAL;
 }

 pp->irq = irq_of_parse_and_map(np_intc, 0);
 if (!pp->irq) {
  dev_err(pci->dev, "Failed to get an IRQ entry in legacy-interrupt-controller\n");
  ret = -EINVAL;
  goto out_put_node;
 }

 priv->legacy_irq_domain = irq_domain_add_linear(np_intc, PCI_NUM_INTX,
      &uniphier_intx_domain_ops, pp);
 if (!priv->legacy_irq_domain) {
  dev_err(pci->dev, "Failed to get INTx domain\n");
  ret = -ENODEV;
  goto out_put_node;
 }

 irq_set_chained_handler_and_data(pp->irq, uniphier_pcie_irq_handler,
      pp);

out_put_node:
 of_node_put(np_intc);
 return ret;
}

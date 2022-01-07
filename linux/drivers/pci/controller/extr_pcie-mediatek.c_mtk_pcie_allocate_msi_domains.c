
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_pcie_port {int inner_domain; TYPE_1__* pcie; int msi_domain; int lock; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;


 int ENOMEM ;
 int MTK_MSI_IRQS_NUM ;
 int dev_err (TYPE_2__*,char*) ;
 int irq_domain_create_linear (struct fwnode_handle*,int ,int *,struct mtk_pcie_port*) ;
 int irq_domain_remove (int ) ;
 int msi_domain_ops ;
 int mtk_msi_domain_info ;
 int mutex_init (int *) ;
 struct fwnode_handle* of_node_to_fwnode (int ) ;
 int pci_msi_create_irq_domain (struct fwnode_handle*,int *,int ) ;

__attribute__((used)) static int mtk_pcie_allocate_msi_domains(struct mtk_pcie_port *port)
{
 struct fwnode_handle *fwnode = of_node_to_fwnode(port->pcie->dev->of_node);

 mutex_init(&port->lock);

 port->inner_domain = irq_domain_create_linear(fwnode, MTK_MSI_IRQS_NUM,
            &msi_domain_ops, port);
 if (!port->inner_domain) {
  dev_err(port->pcie->dev, "failed to create IRQ domain\n");
  return -ENOMEM;
 }

 port->msi_domain = pci_msi_create_irq_domain(fwnode, &mtk_msi_domain_info,
           port->inner_domain);
 if (!port->msi_domain) {
  dev_err(port->pcie->dev, "failed to create MSI domain\n");
  irq_domain_remove(port->inner_domain);
  return -ENOMEM;
 }

 return 0;
}

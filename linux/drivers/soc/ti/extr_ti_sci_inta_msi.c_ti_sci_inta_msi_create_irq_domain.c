
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_domain_info {int dummy; } ;
struct irq_domain {int dummy; } ;
struct fwnode_handle {int dummy; } ;


 int DOMAIN_BUS_TI_SCI_INTA_MSI ;
 int irq_domain_update_bus_token (struct irq_domain*,int ) ;
 struct irq_domain* msi_create_irq_domain (struct fwnode_handle*,struct msi_domain_info*,struct irq_domain*) ;
 int ti_sci_inta_msi_update_chip_ops (struct msi_domain_info*) ;

struct irq_domain *ti_sci_inta_msi_create_irq_domain(struct fwnode_handle *fwnode,
           struct msi_domain_info *info,
           struct irq_domain *parent)
{
 struct irq_domain *domain;

 ti_sci_inta_msi_update_chip_ops(info);

 domain = msi_create_irq_domain(fwnode, info, parent);
 if (domain)
  irq_domain_update_bus_token(domain, DOMAIN_BUS_TI_SCI_INTA_MSI);

 return domain;
}

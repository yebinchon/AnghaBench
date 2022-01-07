
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int msi_domain; } ;


 int msi_domain_free_irqs (int ,struct device*) ;
 int ti_sci_inta_msi_free_descs (struct device*) ;

void ti_sci_inta_msi_domain_free_irqs(struct device *dev)
{
 msi_domain_free_irqs(dev->msi_domain, dev);
 ti_sci_inta_msi_free_descs(dev);
}

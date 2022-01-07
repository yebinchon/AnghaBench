
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_msi {scalar_t__ inner_domain; scalar_t__ msi_domain; } ;


 int irq_domain_remove (scalar_t__) ;

__attribute__((used)) static void xgene_free_domains(struct xgene_msi *msi)
{
 if (msi->msi_domain)
  irq_domain_remove(msi->msi_domain);
 if (msi->inner_domain)
  irq_domain_remove(msi->inner_domain);
}

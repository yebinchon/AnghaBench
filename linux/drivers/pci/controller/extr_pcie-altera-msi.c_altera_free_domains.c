
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_msi {int inner_domain; int msi_domain; } ;


 int irq_domain_remove (int ) ;

__attribute__((used)) static void altera_free_domains(struct altera_msi *msi)
{
 irq_domain_remove(msi->msi_domain);
 irq_domain_remove(msi->inner_domain);
}

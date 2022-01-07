
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct aer_stats* aer_stats; } ;
struct aer_stats {int rootport_total_nonfatal_errs; int rootport_total_fatal_errs; int rootport_total_cor_errs; } ;
struct aer_err_source {int status; } ;


 int PCI_ERR_ROOT_COR_RCV ;
 int PCI_ERR_ROOT_FATAL_RCV ;
 int PCI_ERR_ROOT_UNCOR_RCV ;

__attribute__((used)) static void pci_rootport_aer_stats_incr(struct pci_dev *pdev,
     struct aer_err_source *e_src)
{
 struct aer_stats *aer_stats = pdev->aer_stats;

 if (!aer_stats)
  return;

 if (e_src->status & PCI_ERR_ROOT_COR_RCV)
  aer_stats->rootport_total_cor_errs++;

 if (e_src->status & PCI_ERR_ROOT_UNCOR_RCV) {
  if (e_src->status & PCI_ERR_ROOT_FATAL_RCV)
   aer_stats->rootport_total_fatal_errs++;
  else
   aer_stats->rootport_total_nonfatal_errs++;
 }
}

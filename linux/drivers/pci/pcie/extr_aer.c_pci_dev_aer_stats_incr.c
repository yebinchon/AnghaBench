
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci_dev {struct aer_stats* aer_stats; } ;
struct aer_stats {int * dev_fatal_errs; int dev_total_fatal_errs; int * dev_nonfatal_errs; int dev_total_nonfatal_errs; int * dev_cor_errs; int dev_total_cor_errs; } ;
struct aer_err_info {int severity; int status; int mask; } ;




 int AER_MAX_TYPEOF_COR_ERRS ;
 int AER_MAX_TYPEOF_UNCOR_ERRS ;


__attribute__((used)) static void pci_dev_aer_stats_incr(struct pci_dev *pdev,
       struct aer_err_info *info)
{
 int status, i, max = -1;
 u64 *counter = ((void*)0);
 struct aer_stats *aer_stats = pdev->aer_stats;

 if (!aer_stats)
  return;

 switch (info->severity) {
 case 130:
  aer_stats->dev_total_cor_errs++;
  counter = &aer_stats->dev_cor_errs[0];
  max = AER_MAX_TYPEOF_COR_ERRS;
  break;
 case 128:
  aer_stats->dev_total_nonfatal_errs++;
  counter = &aer_stats->dev_nonfatal_errs[0];
  max = AER_MAX_TYPEOF_UNCOR_ERRS;
  break;
 case 129:
  aer_stats->dev_total_fatal_errs++;
  counter = &aer_stats->dev_fatal_errs[0];
  max = AER_MAX_TYPEOF_UNCOR_ERRS;
  break;
 }

 status = (info->status & ~info->mask);
 for (i = 0; i < max; i++)
  if (status & (1 << i))
   counter[i]++;
}

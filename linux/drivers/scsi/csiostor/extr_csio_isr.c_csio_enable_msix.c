
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_affinity {int pre_vectors; struct csio_hw* priv; int calc_sets; } ;
struct csio_scsi_cpu_info {int max_cpus; } ;
struct csio_hw {int num_pports; int num_sqsets; int flags; int num_scsi_msix_cpus; TYPE_1__** sqset; struct csio_scsi_cpu_info* scsi_cpu_info; int pdev; int cfg_niq; } ;
struct TYPE_2__ {int intr_idx; } ;


 int CSIO_EXTRA_VECS ;
 int CSIO_HWF_USING_SOFT_PARAMS ;
 int ENOSPC ;
 int IRQ_AFFINITY_MAX_SETS ;
 int PCI_IRQ_AFFINITY ;
 int PCI_IRQ_MSIX ;
 int csio_calc_sets ;
 int csio_dbg (struct csio_hw*,char*,int,...) ;
 int csio_hw_to_mbm (struct csio_hw*) ;
 int csio_is_hw_master (struct csio_hw*) ;
 int csio_reduce_sqsets (struct csio_hw*,int) ;
 int csio_set_fwevt_intr_idx (struct csio_hw*,int ) ;
 int csio_set_mb_intr_idx (int ,int ) ;
 int csio_set_nondata_intr_idx (struct csio_hw*,int) ;
 int min_t (int ,int ,int) ;
 int pci_alloc_irq_vectors_affinity (int ,int,int,int,struct irq_affinity*) ;
 int uint8_t ;

__attribute__((used)) static int
csio_enable_msix(struct csio_hw *hw)
{
 int i, j, k, n, min, cnt;
 int extra = CSIO_EXTRA_VECS;
 struct csio_scsi_cpu_info *info;
 struct irq_affinity desc = {
  .pre_vectors = CSIO_EXTRA_VECS,
  .calc_sets = csio_calc_sets,
  .priv = hw,
 };

 if (hw->num_pports > IRQ_AFFINITY_MAX_SETS)
  return -ENOSPC;

 min = hw->num_pports + extra;
 cnt = hw->num_sqsets + extra;


 if (hw->flags & CSIO_HWF_USING_SOFT_PARAMS || !csio_is_hw_master(hw))
  cnt = min_t(uint8_t, hw->cfg_niq, cnt);

 csio_dbg(hw, "FW supp #niq:%d, trying %d msix's\n", hw->cfg_niq, cnt);

 cnt = pci_alloc_irq_vectors_affinity(hw->pdev, min, cnt,
   PCI_IRQ_MSIX | PCI_IRQ_AFFINITY, &desc);
 if (cnt < 0)
  return cnt;

 if (cnt < (hw->num_sqsets + extra)) {
  csio_dbg(hw, "Reducing sqsets to %d\n", cnt - extra);
  csio_reduce_sqsets(hw, cnt - extra);
 }


 k = 0;
 csio_set_nondata_intr_idx(hw, k);
 csio_set_mb_intr_idx(csio_hw_to_mbm(hw), k++);
 csio_set_fwevt_intr_idx(hw, k++);

 for (i = 0; i < hw->num_pports; i++) {
  info = &hw->scsi_cpu_info[i];

  for (j = 0; j < hw->num_scsi_msix_cpus; j++) {
   n = (j % info->max_cpus) + k;
   hw->sqset[i][j].intr_idx = n;
  }

  k += info->max_cpus;
 }

 return 0;
}

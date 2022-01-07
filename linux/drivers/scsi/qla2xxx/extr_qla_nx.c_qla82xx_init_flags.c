
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int pci_int_reg; int tgt_mask_reg; int tgt_status_reg; int int_vec_bit; } ;
struct qla_hw_data {int qdr_sn_window; int ddr_mn_window; int curr_window; size_t portnum; TYPE_2__ nx_legacy_intr; TYPE_1__* pdev; int hw_lock; } ;
struct qla82xx_legacy_intr_set {int pci_int_reg; int tgt_mask_reg; int tgt_status_reg; int int_vec_bit; } ;
struct TYPE_3__ {int devfn; } ;


 size_t PCI_FUNC (int ) ;
 struct qla82xx_legacy_intr_set* legacy_intr ;
 int rwlock_init (int *) ;

void qla82xx_init_flags(struct qla_hw_data *ha)
{
 struct qla82xx_legacy_intr_set *nx_legacy_intr;


 rwlock_init(&ha->hw_lock);
 ha->qdr_sn_window = -1;
 ha->ddr_mn_window = -1;
 ha->curr_window = 255;
 ha->portnum = PCI_FUNC(ha->pdev->devfn);
 nx_legacy_intr = &legacy_intr[ha->portnum];
 ha->nx_legacy_intr.int_vec_bit = nx_legacy_intr->int_vec_bit;
 ha->nx_legacy_intr.tgt_status_reg = nx_legacy_intr->tgt_status_reg;
 ha->nx_legacy_intr.tgt_mask_reg = nx_legacy_intr->tgt_mask_reg;
 ha->nx_legacy_intr.pci_int_reg = nx_legacy_intr->pci_int_reg;
}

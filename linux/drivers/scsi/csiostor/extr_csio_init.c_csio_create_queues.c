
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct csio_scsi_qset {int iq_idx; int eq_idx; int intr_idx; } ;
struct csio_scsi_cpu_info {int max_cpus; } ;
struct csio_mgmtm {int iq_idx; int eq_idx; } ;
struct csio_hw {int flags; scalar_t__ intr_mode; int num_pports; struct csio_scsi_qset** sqset; struct csio_scsi_cpu_info* scsi_cpu_info; TYPE_1__* pport; int fwevt_iq_idx; int intr_iq_idx; } ;
struct TYPE_2__ {int portid; } ;


 int CSIO_HWF_Q_FW_ALLOCED ;
 scalar_t__ CSIO_IM_MSIX ;
 int EINVAL ;
 int csio_err (struct csio_hw*,char*,int,...) ;
 int csio_get_fwevt_intr_idx (struct csio_hw*) ;
 struct csio_mgmtm* csio_hw_to_mgmtm (struct csio_hw*) ;
 int csio_wr_destroy_queues (struct csio_hw*,int) ;
 int csio_wr_eq_create (struct csio_hw*,int *,int ,int ,int,int *) ;
 int csio_wr_iq_create (struct csio_hw*,int *,int ,int ,int,int,int *) ;

__attribute__((used)) static int
csio_create_queues(struct csio_hw *hw)
{
 int i, j;
 struct csio_mgmtm *mgmtm = csio_hw_to_mgmtm(hw);
 int rv;
 struct csio_scsi_cpu_info *info;

 if (hw->flags & CSIO_HWF_Q_FW_ALLOCED)
  return 0;

 if (hw->intr_mode != CSIO_IM_MSIX) {
  rv = csio_wr_iq_create(hw, ((void*)0), hw->intr_iq_idx,
     0, hw->pport[0].portid, 0, ((void*)0));
  if (rv != 0) {
   csio_err(hw, " Forward Interrupt IQ failed!: %d\n", rv);
   return rv;
  }
 }


 rv = csio_wr_iq_create(hw, ((void*)0), hw->fwevt_iq_idx,
          csio_get_fwevt_intr_idx(hw),
          hw->pport[0].portid, 1, ((void*)0));
 if (rv != 0) {
  csio_err(hw, "FW event IQ config failed!: %d\n", rv);
  return rv;
 }


 rv = csio_wr_eq_create(hw, ((void*)0), mgmtm->eq_idx,
   mgmtm->iq_idx, hw->pport[0].portid, ((void*)0));

 if (rv != 0) {
  csio_err(hw, "Mgmt EQ create failed!: %d\n", rv);
  goto err;
 }


 for (i = 0; i < hw->num_pports; i++) {
  info = &hw->scsi_cpu_info[i];

  for (j = 0; j < info->max_cpus; j++) {
   struct csio_scsi_qset *sqset = &hw->sqset[i][j];

   rv = csio_wr_iq_create(hw, ((void*)0), sqset->iq_idx,
            sqset->intr_idx, i, 0, ((void*)0));
   if (rv != 0) {
    csio_err(hw,
       "SCSI module IQ config failed [%d][%d]:%d\n",
       i, j, rv);
    goto err;
   }
   rv = csio_wr_eq_create(hw, ((void*)0), sqset->eq_idx,
            sqset->iq_idx, i, ((void*)0));
   if (rv != 0) {
    csio_err(hw,
       "SCSI module EQ config failed [%d][%d]:%d\n",
       i, j, rv);
    goto err;
   }
  }
 }

 hw->flags |= CSIO_HWF_Q_FW_ALLOCED;
 return 0;
err:
 csio_wr_destroy_queues(hw, 1);
 return -EINVAL;
}

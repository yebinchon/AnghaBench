
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int cqe_exp_seq_sn; int cqe_size; scalar_t__ cq_pgtbl_virt; } ;
struct bnx2i_endpoint {int ec_shift; TYPE_2__ qp; int num_active_cmds; TYPE_1__* hba; } ;
struct bnx2i_5771x_cq_db {int* sqn; } ;
struct TYPE_3__ {int cnic_dev_type; } ;


 int BNX2I_NX2_DEV_57710 ;
 scalar_t__ CNIC_ARM_CQE ;
 scalar_t__ CNIC_ARM_CQE_FP ;
 int atomic_read (int *) ;
 int event_coal_min ;
 int test_bit (int ,int *) ;

int bnx2i_arm_cq_event_coalescing(struct bnx2i_endpoint *ep, u8 action)
{
 struct bnx2i_5771x_cq_db *cq_db;
 u16 cq_index;
 u16 next_index = 0;
 u32 num_active_cmds;


 if (!test_bit(BNX2I_NX2_DEV_57710, &ep->hba->cnic_dev_type))
  return 0;





 cq_db = (struct bnx2i_5771x_cq_db *) ep->qp.cq_pgtbl_virt;

 if (action != CNIC_ARM_CQE_FP)
  if (cq_db->sqn[0] && cq_db->sqn[0] != 0xFFFF)
   return 0;

 if (action == CNIC_ARM_CQE || action == CNIC_ARM_CQE_FP) {
  num_active_cmds = atomic_read(&ep->num_active_cmds);
  if (num_active_cmds <= event_coal_min)
   next_index = 1;
  else {
   next_index = num_active_cmds >> ep->ec_shift;
   if (next_index > num_active_cmds - event_coal_min)
    next_index = num_active_cmds - event_coal_min;
  }
  if (!next_index)
   next_index = 1;
  cq_index = ep->qp.cqe_exp_seq_sn + next_index - 1;
  if (cq_index > ep->qp.cqe_size * 2)
   cq_index -= ep->qp.cqe_size * 2;
  if (!cq_index)
   cq_index = 1;

  cq_db->sqn[0] = cq_index;
 }
 return next_index;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct dlm_slot {int slot; int nodeid; } ;
struct dlm_member {scalar_t__ comm_seq; int slot; int nodeid; } ;
struct dlm_ls {int ls_ops_arg; TYPE_1__* ls_ops; } ;
struct TYPE_2__ {int (* recover_slot ) (int ,struct dlm_slot*) ;} ;


 int dlm_comm_seq (int ,scalar_t__*) ;
 int stub1 (int ,struct dlm_slot*) ;

__attribute__((used)) static void dlm_lsop_recover_slot(struct dlm_ls *ls, struct dlm_member *memb)
{
 struct dlm_slot slot;
 uint32_t seq;
 int error;

 if (!ls->ls_ops || !ls->ls_ops->recover_slot)
  return;







 error = dlm_comm_seq(memb->nodeid, &seq);

 if (!error && seq == memb->comm_seq)
  return;

 slot.nodeid = memb->nodeid;
 slot.slot = memb->slot;

 ls->ls_ops->recover_slot(ls->ls_ops_arg, &slot);
}

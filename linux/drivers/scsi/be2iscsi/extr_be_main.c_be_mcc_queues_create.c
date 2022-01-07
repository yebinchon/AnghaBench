
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hwi_context_memory {TYPE_2__* be_eq; } ;
struct be_queue_info {int dummy; } ;
struct TYPE_6__ {struct be_queue_info q; struct be_queue_info cq; } ;
struct be_ctrl_info {TYPE_3__ mcc_obj; } ;
struct beiscsi_hba {size_t num_cpus; struct be_ctrl_info ctrl; TYPE_1__* pcidev; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_mcc_compl {int dummy; } ;
struct TYPE_5__ {int q; } ;
struct TYPE_4__ {scalar_t__ msix_enabled; } ;


 int ENOMEM ;
 int MCC_CQ_LEN ;
 int MCC_Q_LEN ;
 int QTYPE_CQ ;
 scalar_t__ be_queue_alloc (struct beiscsi_hba*,struct be_queue_info*,int ,int) ;
 int be_queue_free (struct beiscsi_hba*,struct be_queue_info*) ;
 scalar_t__ beiscsi_cmd_cq_create (struct be_ctrl_info*,struct be_queue_info*,int *,int,int,int ) ;
 scalar_t__ beiscsi_cmd_mccq_create (struct beiscsi_hba*,struct be_queue_info*,struct be_queue_info*) ;
 int beiscsi_cmd_q_destroy (struct be_ctrl_info*,struct be_queue_info*,int ) ;

__attribute__((used)) static int be_mcc_queues_create(struct beiscsi_hba *phba,
    struct hwi_context_memory *phwi_context)
{
 struct be_queue_info *q, *cq;
 struct be_ctrl_info *ctrl = &phba->ctrl;


 cq = &phba->ctrl.mcc_obj.cq;
 if (be_queue_alloc(phba, cq, MCC_CQ_LEN,
   sizeof(struct be_mcc_compl)))
  goto err;

 if (phba->pcidev->msix_enabled) {
  if (beiscsi_cmd_cq_create(ctrl, cq,
     &phwi_context->be_eq[phba->num_cpus].q,
     0, 1, 0))
   goto mcc_cq_free;
 } else {
  if (beiscsi_cmd_cq_create(ctrl, cq, &phwi_context->be_eq[0].q,
       0, 1, 0))
   goto mcc_cq_free;
 }


 q = &phba->ctrl.mcc_obj.q;
 if (be_queue_alloc(phba, q, MCC_Q_LEN, sizeof(struct be_mcc_wrb)))
  goto mcc_cq_destroy;


 if (beiscsi_cmd_mccq_create(phba, q, cq))
  goto mcc_q_free;

 return 0;

mcc_q_free:
 be_queue_free(phba, q);
mcc_cq_destroy:
 beiscsi_cmd_q_destroy(ctrl, cq, QTYPE_CQ);
mcc_cq_free:
 be_queue_free(phba, cq);
err:
 return -ENOMEM;
}

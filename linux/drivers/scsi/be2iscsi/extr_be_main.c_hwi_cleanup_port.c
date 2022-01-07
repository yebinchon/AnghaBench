
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hwi_controller {struct hwi_context_memory* phwi_ctxt; } ;
struct hwi_context_memory {TYPE_4__* be_eq; struct be_queue_info* be_cq; struct be_queue_info* be_def_dataq; struct be_queue_info* be_def_hdrq; struct be_queue_info* be_wrbq; } ;
struct be_ctrl_info {int dummy; } ;
struct TYPE_6__ {int ulp_supported; } ;
struct TYPE_5__ {int cxns_per_ctrl; } ;
struct beiscsi_hba {int num_cpus; struct be_ctrl_info ctrl; TYPE_3__* pcidev; TYPE_2__ fw_config; TYPE_1__ params; struct hwi_controller* phwi_ctrlr; } ;
struct be_queue_info {scalar_t__ created; } ;
struct TYPE_8__ {struct be_queue_info q; } ;
struct TYPE_7__ {scalar_t__ msix_enabled; } ;


 int BEISCSI_ULP_COUNT ;
 int QTYPE_CQ ;
 int QTYPE_DPDUQ ;
 int QTYPE_EQ ;
 int QTYPE_SGL ;
 int QTYPE_WRBQ ;
 int be_cmd_iscsi_remove_template_hdr (struct be_ctrl_info*) ;
 int be_mcc_queues_destroy (struct beiscsi_hba*) ;
 int be_queue_free (struct beiscsi_hba*,struct be_queue_info*) ;
 int beiscsi_cmd_function_reset (struct beiscsi_hba*) ;
 int beiscsi_cmd_iscsi_cleanup (struct beiscsi_hba*,int) ;
 int beiscsi_cmd_q_destroy (struct be_ctrl_info*,struct be_queue_info*,int ) ;
 int beiscsi_cmd_special_wrb (struct be_ctrl_info*,int ) ;
 int free_wrb_handles (struct beiscsi_hba*) ;
 int hwi_purge_eq (struct beiscsi_hba*) ;
 int kfree (struct be_queue_info*) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static void hwi_cleanup_port(struct beiscsi_hba *phba)
{
 struct be_queue_info *q;
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct hwi_controller *phwi_ctrlr;
 struct hwi_context_memory *phwi_context;
 int i, eq_for_mcc, ulp_num;

 for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++)
  if (test_bit(ulp_num, &phba->fw_config.ulp_supported))
   beiscsi_cmd_iscsi_cleanup(phba, ulp_num);






 hwi_purge_eq(phba);

 phwi_ctrlr = phba->phwi_ctrlr;
 phwi_context = phwi_ctrlr->phwi_ctxt;

 be_cmd_iscsi_remove_template_hdr(ctrl);

 for (i = 0; i < phba->params.cxns_per_ctrl; i++) {
  q = &phwi_context->be_wrbq[i];
  if (q->created)
   beiscsi_cmd_q_destroy(ctrl, q, QTYPE_WRBQ);
 }
 kfree(phwi_context->be_wrbq);
 free_wrb_handles(phba);

 for (ulp_num = 0; ulp_num < BEISCSI_ULP_COUNT; ulp_num++) {
  if (test_bit(ulp_num, &phba->fw_config.ulp_supported)) {

   q = &phwi_context->be_def_hdrq[ulp_num];
   if (q->created)
    beiscsi_cmd_q_destroy(ctrl, q, QTYPE_DPDUQ);

   q = &phwi_context->be_def_dataq[ulp_num];
   if (q->created)
    beiscsi_cmd_q_destroy(ctrl, q, QTYPE_DPDUQ);
  }
 }

 beiscsi_cmd_q_destroy(ctrl, ((void*)0), QTYPE_SGL);

 for (i = 0; i < (phba->num_cpus); i++) {
  q = &phwi_context->be_cq[i];
  if (q->created) {
   be_queue_free(phba, q);
   beiscsi_cmd_q_destroy(ctrl, q, QTYPE_CQ);
  }
 }

 be_mcc_queues_destroy(phba);
 if (phba->pcidev->msix_enabled)
  eq_for_mcc = 1;
 else
  eq_for_mcc = 0;
 for (i = 0; i < (phba->num_cpus + eq_for_mcc); i++) {
  q = &phwi_context->be_eq[i].q;
  if (q->created) {
   be_queue_free(phba, q);
   beiscsi_cmd_q_destroy(ctrl, q, QTYPE_EQ);
  }
 }

 beiscsi_cmd_function_reset(phba);

 beiscsi_cmd_special_wrb(&phba->ctrl, 0);
}

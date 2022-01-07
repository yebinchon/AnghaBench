
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct qedf_ctx {TYPE_4__* lport; int io_mempool; int cdev; int dbg_ctx; int * dpc_wq; int cmd_mgr; int ctlr; int grcdump; int * ll2_recv_wq; int flags; int * timer_work_queue; int * link_update_wq; int link_update; } ;
struct pci_dev {int dummy; } ;
struct TYPE_11__ {int host; } ;
struct TYPE_10__ {TYPE_2__* common; int (* stop ) (int ) ;TYPE_1__* ll2; } ;
struct TYPE_9__ {int (* update_drv_state ) (int ,int) ;int (* remove ) (int ) ;int (* slowpath_stop ) (int ) ;int (* set_power_state ) (int ,int ) ;} ;
struct TYPE_8__ {int (* stop ) (int ) ;} ;


 int PCI_D0 ;
 int QEDF_ERR (int *,char*) ;
 int QEDF_LL2_STARTED ;
 int QEDF_MODE_RECOVERY ;
 int QEDF_UNLOADING ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int destroy_workqueue (int *) ;
 int fc_exch_mgr_free (TYPE_4__*) ;
 int fc_fabric_logoff (TYPE_4__*) ;
 int fc_lport_destroy (TYPE_4__*) ;
 int fc_lport_free_stats (TYPE_4__*) ;
 int fc_remove_host (int ) ;
 int fcoe_ctlr_destroy (int *) ;
 int fcoe_ctlr_link_down (int *) ;
 int mempool_destroy (int ) ;
 struct qedf_ctx* pci_get_drvdata (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 TYPE_3__* qed_ops ;
 int qedf_cmd_mgr_free (int ) ;
 int qedf_dbg_host_exit (int *) ;
 int qedf_destroy_sb (struct qedf_ctx*) ;
 int qedf_free_fcoe_pf_param (struct qedf_ctx*) ;
 int qedf_free_grc_dump_buf (int *) ;
 int qedf_remove_sysfs_ctx_attr (struct qedf_ctx*) ;
 int qedf_sync_free_irqs (struct qedf_ctx*) ;
 int qedf_wait_for_upload (struct qedf_ctx*) ;
 int qedf_wait_for_vport_destroy (struct qedf_ctx*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int set_bit (int ,int *) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int) ;
 int stub5 (int ) ;
 int stub6 (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __qedf_remove(struct pci_dev *pdev, int mode)
{
 struct qedf_ctx *qedf;
 int rc;

 if (!pdev) {
  QEDF_ERR(((void*)0), "pdev is NULL.\n");
  return;
 }

 qedf = pci_get_drvdata(pdev);





 if (test_bit(QEDF_UNLOADING, &qedf->flags)) {
  QEDF_ERR(&qedf->dbg_ctx, "Already removing PCI function.\n");
  return;
 }

 if (mode != QEDF_MODE_RECOVERY)
  set_bit(QEDF_UNLOADING, &qedf->flags);


 if (mode == QEDF_MODE_RECOVERY)
  fcoe_ctlr_link_down(&qedf->ctlr);
 else
  fc_fabric_logoff(qedf->lport);

 if (qedf_wait_for_upload(qedf) == 0)
  QEDF_ERR(&qedf->dbg_ctx, "Could not upload all sessions.\n");






 cancel_delayed_work_sync(&qedf->link_update);
 destroy_workqueue(qedf->link_update_wq);
 qedf->link_update_wq = ((void*)0);

 if (qedf->timer_work_queue)
  destroy_workqueue(qedf->timer_work_queue);


 clear_bit(QEDF_LL2_STARTED, &qedf->flags);
 qed_ops->ll2->stop(qedf->cdev);
 if (qedf->ll2_recv_wq)
  destroy_workqueue(qedf->ll2_recv_wq);


 qedf_sync_free_irqs(qedf);
 qedf_destroy_sb(qedf);





 if (mode != QEDF_MODE_RECOVERY) {
  qedf_free_grc_dump_buf(&qedf->grcdump);
  qedf_remove_sysfs_ctx_attr(qedf);


  fcoe_ctlr_destroy(&qedf->ctlr);
  fc_lport_destroy(qedf->lport);
  fc_remove_host(qedf->lport->host);
  scsi_remove_host(qedf->lport->host);
 }

 qedf_cmd_mgr_free(qedf->cmd_mgr);

 if (mode != QEDF_MODE_RECOVERY) {
  fc_exch_mgr_free(qedf->lport);
  fc_lport_free_stats(qedf->lport);


  qedf_wait_for_vport_destroy(qedf);
 }





 qed_ops->stop(qedf->cdev);

 if (mode != QEDF_MODE_RECOVERY) {
  if (qedf->dpc_wq) {

   destroy_workqueue(qedf->dpc_wq);
   qedf->dpc_wq = ((void*)0);
  }
 }


 qedf_free_fcoe_pf_param(qedf);
 if (mode != QEDF_MODE_RECOVERY) {
  qed_ops->common->set_power_state(qedf->cdev, PCI_D0);
  pci_set_drvdata(pdev, ((void*)0));
 }

 rc = qed_ops->common->update_drv_state(qedf->cdev, 0);
 if (rc)
  QEDF_ERR(&(qedf->dbg_ctx),
   "Failed to send drv state to MFW.\n");

 qed_ops->common->slowpath_stop(qedf->cdev);
 qed_ops->common->remove(qedf->cdev);

 mempool_destroy(qedf->io_mempool);


 if (mode != QEDF_MODE_RECOVERY)
  scsi_host_put(qedf->lport->host);
}

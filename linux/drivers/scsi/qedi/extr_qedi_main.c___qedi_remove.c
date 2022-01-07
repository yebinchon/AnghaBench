
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qedi_ctx {scalar_t__ boot_kset; int * ll2_recv_thread; int shost; int udev; int cdev; int flags; int dbg_ctx; int * offload_thread; int * tmf_thread; } ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {TYPE_2__* common; TYPE_1__* ll2; int (* stop ) (int ) ;} ;
struct TYPE_5__ {int (* update_drv_state ) (int ,int) ;int (* remove ) (int ) ;int (* slowpath_stop ) (int ) ;int (* set_power_state ) (int ,int ) ;} ;
struct TYPE_4__ {int (* stop ) (int ) ;} ;


 int PCI_D0 ;
 int QEDI_ERR (int *,char*) ;
 int QEDI_IN_OFFLINE ;
 int QEDI_MODE_NORMAL ;
 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int iscsi_boot_destroy_kset (scalar_t__) ;
 int iscsi_host_free (int ) ;
 int iscsi_host_remove (int ) ;
 int kthread_stop (int *) ;
 struct qedi_ctx* pci_get_drvdata (struct pci_dev*) ;
 int qedi_cm_free_mem (struct qedi_ctx*) ;
 int qedi_dbg_host_exit (int *) ;
 int qedi_destroy_fp (struct qedi_ctx*) ;
 int qedi_free_iscsi_pf_param (struct qedi_ctx*) ;
 int qedi_free_itt (struct qedi_ctx*) ;
 int qedi_free_uio (int ) ;
 int qedi_ll2_free_skbs (struct qedi_ctx*) ;
 TYPE_3__* qedi_ops ;
 int qedi_release_cid_que (struct qedi_ctx*) ;
 int qedi_sync_free_irqs (struct qedi_ctx*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;
 int stub4 (int ,int) ;
 int stub5 (int ) ;
 int stub6 (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void __qedi_remove(struct pci_dev *pdev, int mode)
{
 struct qedi_ctx *qedi = pci_get_drvdata(pdev);
 int rval;

 if (qedi->tmf_thread) {
  flush_workqueue(qedi->tmf_thread);
  destroy_workqueue(qedi->tmf_thread);
  qedi->tmf_thread = ((void*)0);
 }

 if (qedi->offload_thread) {
  flush_workqueue(qedi->offload_thread);
  destroy_workqueue(qedi->offload_thread);
  qedi->offload_thread = ((void*)0);
 }




 if (!test_bit(QEDI_IN_OFFLINE, &qedi->flags))
  qedi_ops->common->set_power_state(qedi->cdev, PCI_D0);

 qedi_sync_free_irqs(qedi);

 if (!test_bit(QEDI_IN_OFFLINE, &qedi->flags)) {
  qedi_ops->stop(qedi->cdev);
  qedi_ops->ll2->stop(qedi->cdev);
 }

 if (mode == QEDI_MODE_NORMAL)
  qedi_free_iscsi_pf_param(qedi);

 rval = qedi_ops->common->update_drv_state(qedi->cdev, 0);
 if (rval)
  QEDI_ERR(&qedi->dbg_ctx, "Failed to send drv state to MFW\n");

 if (!test_bit(QEDI_IN_OFFLINE, &qedi->flags)) {
  qedi_ops->common->slowpath_stop(qedi->cdev);
  qedi_ops->common->remove(qedi->cdev);
 }

 qedi_destroy_fp(qedi);

 if (mode == QEDI_MODE_NORMAL) {
  qedi_release_cid_que(qedi);
  qedi_cm_free_mem(qedi);
  qedi_free_uio(qedi->udev);
  qedi_free_itt(qedi);

  iscsi_host_remove(qedi->shost);
  iscsi_host_free(qedi->shost);

  if (qedi->ll2_recv_thread) {
   kthread_stop(qedi->ll2_recv_thread);
   qedi->ll2_recv_thread = ((void*)0);
  }
  qedi_ll2_free_skbs(qedi);

  if (qedi->boot_kset)
   iscsi_boot_destroy_kset(qedi->boot_kset);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_22__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {scalar_t__ fw_started; } ;
struct qla_hw_data {int bars; TYPE_22__* pdev; scalar_t__ exchoffld_buf; scalar_t__ exlogin_buf; TYPE_1__ flags; int board_disable; } ;
struct pci_dev {int enable_cnt; } ;
struct TYPE_28__ {scalar_t__ online; } ;
struct TYPE_27__ {int l; } ;
struct TYPE_26__ {int * l; int ldma; int size; } ;
struct TYPE_29__ {int host; TYPE_4__ flags; scalar_t__ timer_active; TYPE_3__ scan; TYPE_2__ gnl; int dpc_flags; int pci_flags; struct qla_hw_data* hw; } ;
typedef TYPE_5__ scsi_qla_host_t ;
struct TYPE_25__ {int dev; } ;


 scalar_t__ IS_QLA2031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA8031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 int PFLG_DRIVER_REMOVING ;
 scalar_t__ QLA_SUCCESS ;
 int UNLOADING ;
 int atomic_read (int *) ;
 int cancel_work_sync (int *) ;
 int dma_free_coherent (int *,int ,int *,int ) ;
 int fc_remove_host (int ) ;
 int kfree (struct qla_hw_data*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 TYPE_5__* pci_get_drvdata (struct pci_dev*) ;
 int pci_release_selected_regions (TYPE_22__*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;
 int ql_dbg (int ,TYPE_5__*,int,char*) ;
 int ql_dbg_p3p ;
 int ql_log (int ,TYPE_5__*,int,char*) ;
 int ql_log_info ;
 int qla2x00_abort_isp_cleanup (TYPE_5__*) ;
 int qla2x00_clear_drv_active (struct qla_hw_data*) ;
 int qla2x00_delete_all_vps (struct qla_hw_data*,TYPE_5__*) ;
 int qla2x00_destroy_deferred_work (struct qla_hw_data*) ;
 int qla2x00_dfs_remove (TYPE_5__*) ;
 int qla2x00_free_device (TYPE_5__*) ;
 int qla2x00_free_exchoffld_buffer (struct qla_hw_data*) ;
 int qla2x00_free_exlogin_buffer (struct qla_hw_data*) ;
 int qla2x00_free_sysfs_attr (TYPE_5__*,int) ;
 int qla2x00_stop_timer (TYPE_5__*) ;
 int qla2x00_try_to_stop_firmware (TYPE_5__*) ;
 int qla2x00_unmap_iobases (struct qla_hw_data*) ;
 int qla2x00_wait_for_hba_ready (TYPE_5__*) ;
 int qla2x00_wait_for_sess_deletion (TYPE_5__*) ;
 scalar_t__ qla83xx_clear_drv_presence (TYPE_5__*) ;
 int qla84xx_put_chip (TYPE_5__*) ;
 int qla_nvme_delete (TYPE_5__*) ;
 int qlafx00_driver_shutdown (TYPE_5__*,int) ;
 int qlt_remove_target (struct qla_hw_data*,TYPE_5__*) ;
 int qlt_remove_target_resources (struct qla_hw_data*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int vfree (int ) ;

__attribute__((used)) static void
qla2x00_remove_one(struct pci_dev *pdev)
{
 scsi_qla_host_t *base_vha;
 struct qla_hw_data *ha;

 base_vha = pci_get_drvdata(pdev);
 ha = base_vha->hw;
 ql_log(ql_log_info, base_vha, 0xb079,
     "Removing driver\n");



 set_bit(PFLG_DRIVER_REMOVING, &base_vha->pci_flags);
 cancel_work_sync(&ha->board_disable);






 if (!atomic_read(&pdev->enable_cnt)) {
  dma_free_coherent(&ha->pdev->dev, base_vha->gnl.size,
      base_vha->gnl.l, base_vha->gnl.ldma);
  base_vha->gnl.l = ((void*)0);
  scsi_host_put(base_vha->host);
  kfree(ha);
  pci_set_drvdata(pdev, ((void*)0));
  return;
 }
 qla2x00_wait_for_hba_ready(base_vha);

 if (IS_QLA25XX(ha) || IS_QLA2031(ha) || IS_QLA27XX(ha) ||
     IS_QLA28XX(ha)) {
  if (ha->flags.fw_started)
   qla2x00_abort_isp_cleanup(base_vha);
 } else if (!IS_QLAFX00(ha)) {
  if (IS_QLA8031(ha)) {
   ql_dbg(ql_dbg_p3p, base_vha, 0xb07e,
       "Clearing fcoe driver presence.\n");
   if (qla83xx_clear_drv_presence(base_vha) != QLA_SUCCESS)
    ql_dbg(ql_dbg_p3p, base_vha, 0xb079,
        "Error while clearing DRV-Presence.\n");
  }

  qla2x00_try_to_stop_firmware(base_vha);
 }

 qla2x00_wait_for_sess_deletion(base_vha);





 if (test_bit(UNLOADING, &base_vha->dpc_flags))
  return;

 set_bit(UNLOADING, &base_vha->dpc_flags);

 qla_nvme_delete(base_vha);

 dma_free_coherent(&ha->pdev->dev,
  base_vha->gnl.size, base_vha->gnl.l, base_vha->gnl.ldma);

 base_vha->gnl.l = ((void*)0);

 vfree(base_vha->scan.l);

 if (IS_QLAFX00(ha))
  qlafx00_driver_shutdown(base_vha, 20);

 qla2x00_delete_all_vps(ha, base_vha);

 qla2x00_dfs_remove(base_vha);

 qla84xx_put_chip(base_vha);


 if (base_vha->timer_active)
  qla2x00_stop_timer(base_vha);

 base_vha->flags.online = 0;


 if (ha->exlogin_buf)
  qla2x00_free_exlogin_buffer(ha);


 if (ha->exchoffld_buf)
  qla2x00_free_exchoffld_buffer(ha);

 qla2x00_destroy_deferred_work(ha);

 qlt_remove_target(ha, base_vha);

 qla2x00_free_sysfs_attr(base_vha, 1);

 fc_remove_host(base_vha->host);
 qlt_remove_target_resources(ha);

 scsi_remove_host(base_vha->host);

 qla2x00_free_device(base_vha);

 qla2x00_clear_drv_active(ha);

 scsi_host_put(base_vha->host);

 qla2x00_unmap_iobases(ha);

 pci_release_selected_regions(ha->pdev, ha->bars);
 kfree(ha);

 pci_disable_pcie_error_reporting(pdev);

 pci_disable_device(pdev);
}

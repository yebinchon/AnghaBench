
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ fw_started; scalar_t__ fce_enabled; } ;
struct qla_hw_data {TYPE_3__* isp_ops; scalar_t__ interrupts_on; TYPE_1__ flags; scalar_t__ eft; int board_disable; } ;
struct pci_dev {int enable_cnt; } ;
struct TYPE_15__ {scalar_t__ init_done; scalar_t__ online; } ;
struct TYPE_17__ {TYPE_2__ flags; scalar_t__ timer_active; int pci_flags; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_16__ {int (* disable_intrs ) (struct qla_hw_data*) ;} ;


 scalar_t__ IS_QLA2031 (struct qla_hw_data*) ;
 scalar_t__ IS_QLA25XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA27XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLA28XX (struct qla_hw_data*) ;
 scalar_t__ IS_QLAFX00 (struct qla_hw_data*) ;
 int PFLG_DRIVER_REMOVING ;
 int atomic_read (int *) ;
 int cancel_work_sync (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 TYPE_4__* pci_get_drvdata (struct pci_dev*) ;
 int ql_log (int ,TYPE_4__*,int,char*) ;
 int ql_log_info ;
 int qla2x00_abort_isp_cleanup (TYPE_4__*) ;
 int qla2x00_disable_eft_trace (TYPE_4__*) ;
 int qla2x00_disable_fce_trace (TYPE_4__*,int *,int *) ;
 int qla2x00_free_fw_dump (struct qla_hw_data*) ;
 int qla2x00_free_irqs (TYPE_4__*) ;
 int qla2x00_stop_timer (TYPE_4__*) ;
 int qla2x00_try_to_stop_firmware (TYPE_4__*) ;
 int qlafx00_driver_shutdown (TYPE_4__*,int) ;
 int set_bit (int ,int *) ;
 int stub1 (struct qla_hw_data*) ;

__attribute__((used)) static void
qla2x00_shutdown(struct pci_dev *pdev)
{
 scsi_qla_host_t *vha;
 struct qla_hw_data *ha;

 vha = pci_get_drvdata(pdev);
 ha = vha->hw;

 ql_log(ql_log_info, vha, 0xfffa,
  "Adapter shutdown\n");





 set_bit(PFLG_DRIVER_REMOVING, &vha->pci_flags);
 cancel_work_sync(&ha->board_disable);

 if (!atomic_read(&pdev->enable_cnt))
  return;


 if (IS_QLAFX00(ha))
  qlafx00_driver_shutdown(vha, 20);


 if (ha->flags.fce_enabled) {
  qla2x00_disable_fce_trace(vha, ((void*)0), ((void*)0));
  ha->flags.fce_enabled = 0;
 }


 if (ha->eft)
  qla2x00_disable_eft_trace(vha);

 if (IS_QLA25XX(ha) || IS_QLA2031(ha) || IS_QLA27XX(ha) ||
     IS_QLA28XX(ha)) {
  if (ha->flags.fw_started)
   qla2x00_abort_isp_cleanup(vha);
 } else {

  qla2x00_try_to_stop_firmware(vha);
 }


 if (vha->timer_active)
  qla2x00_stop_timer(vha);


 vha->flags.online = 0;


 if (ha->interrupts_on) {
  vha->flags.init_done = 0;
  ha->isp_ops->disable_intrs(ha);
 }

 qla2x00_free_irqs(vha);

 qla2x00_free_fw_dump(ha);

 pci_disable_device(pdev);
 ql_log(ql_log_info, vha, 0xfffe,
  "Adapter shutdown successfully.\n");
}

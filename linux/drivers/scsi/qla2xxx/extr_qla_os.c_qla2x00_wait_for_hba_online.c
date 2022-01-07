
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qla_hw_data {scalar_t__ dpc_active; int pdev; } ;
struct TYPE_5__ {scalar_t__ online; } ;
struct TYPE_6__ {TYPE_1__ flags; int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int ABORT_ISP_ACTIVE ;
 unsigned long HZ ;
 int ISP_ABORT_NEEDED ;
 int ISP_ABORT_RETRY ;
 unsigned long MAX_LOOP_TIMEOUT ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 unsigned long jiffies ;
 int msleep (int) ;
 TYPE_2__* pci_get_drvdata (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int
qla2x00_wait_for_hba_online(scsi_qla_host_t *vha)
{
 int return_status;
 unsigned long wait_online;
 struct qla_hw_data *ha = vha->hw;
 scsi_qla_host_t *base_vha = pci_get_drvdata(ha->pdev);

 wait_online = jiffies + (MAX_LOOP_TIMEOUT * HZ);
 while (((test_bit(ISP_ABORT_NEEDED, &base_vha->dpc_flags)) ||
     test_bit(ABORT_ISP_ACTIVE, &base_vha->dpc_flags) ||
     test_bit(ISP_ABORT_RETRY, &base_vha->dpc_flags) ||
     ha->dpc_active) && time_before(jiffies, wait_online)) {

  msleep(1000);
 }
 if (base_vha->flags.online)
  return_status = QLA_SUCCESS;
 else
  return_status = QLA_FUNCTION_FAILED;

 return (return_status);
}

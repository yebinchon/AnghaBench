
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ mbox_busy; } ;
struct qla_hw_data {TYPE_1__ flags; scalar_t__ dpc_active; int pdev; } ;
struct TYPE_7__ {int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int FX00_RESET_RECOVERY ;
 int FX00_TARGET_SCAN ;
 int UNLOADING ;
 int msleep (int) ;
 TYPE_2__* pci_get_drvdata (int ) ;
 scalar_t__ qla2x00_reset_active (TYPE_2__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void
qla2x00_wait_for_hba_ready(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 scsi_qla_host_t *base_vha = pci_get_drvdata(ha->pdev);

 while ((qla2x00_reset_active(vha) || ha->dpc_active ||
  ha->flags.mbox_busy) ||
        test_bit(FX00_RESET_RECOVERY, &vha->dpc_flags) ||
        test_bit(FX00_TARGET_SCAN, &vha->dpc_flags)) {
  if (test_bit(UNLOADING, &base_vha->dpc_flags))
   break;
  msleep(1000);
 }
}

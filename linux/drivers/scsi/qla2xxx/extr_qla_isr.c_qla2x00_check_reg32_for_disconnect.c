
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* hw; int pci_flags; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {int board_disable; int pdev; } ;


 int PFLG_DISCONNECTED ;
 int PFLG_DRIVER_PROBING ;
 int PFLG_DRIVER_REMOVING ;
 int pci_channel_offline (int ) ;
 int schedule_work (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

bool
qla2x00_check_reg32_for_disconnect(scsi_qla_host_t *vha, uint32_t reg)
{

 if (reg == 0xffffffff && !pci_channel_offline(vha->hw->pdev)) {
  if (!test_and_set_bit(PFLG_DISCONNECTED, &vha->pci_flags) &&
      !test_bit(PFLG_DRIVER_REMOVING, &vha->pci_flags) &&
      !test_bit(PFLG_DRIVER_PROBING, &vha->pci_flags)) {





   schedule_work(&vha->hw->board_disable);
  }
  return 1;
 } else
  return 0;
}

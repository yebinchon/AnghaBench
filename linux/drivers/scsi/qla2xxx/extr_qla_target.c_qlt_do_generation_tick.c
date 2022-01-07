
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* hw; } ;
struct TYPE_5__ {int generation_tick; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {int pdev; } ;


 int atomic_inc_return (int *) ;
 TYPE_2__* pci_get_drvdata (int ) ;
 int wmb () ;

void qlt_do_generation_tick(struct scsi_qla_host *vha, int *dest)
{
 scsi_qla_host_t *base_vha = pci_get_drvdata(vha->hw->pdev);
 *dest = atomic_inc_return(&base_vha->generation_tick);

 wmb();
}

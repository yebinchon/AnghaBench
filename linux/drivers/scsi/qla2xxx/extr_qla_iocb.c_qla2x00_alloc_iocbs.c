
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* hw; } ;
typedef int srb_t ;
struct TYPE_2__ {int base_qpair; } ;


 void* __qla2x00_alloc_iocbs (int ,int *) ;

void *
qla2x00_alloc_iocbs(struct scsi_qla_host *vha, srb_t *sp)
{
 return __qla2x00_alloc_iocbs(vha->hw->base_qpair, sp);
}

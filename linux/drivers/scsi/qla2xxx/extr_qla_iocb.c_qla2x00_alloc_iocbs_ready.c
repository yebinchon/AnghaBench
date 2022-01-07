
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qla_qpair {int * vha; } ;
typedef int srb_t ;
typedef int scsi_qla_host_t ;


 void* __qla2x00_alloc_iocbs (struct qla_qpair*,int *) ;
 scalar_t__ qla2x00_reset_active (int *) ;

void *
qla2x00_alloc_iocbs_ready(struct qla_qpair *qpair, srb_t *sp)
{
 scsi_qla_host_t *vha = qpair->vha;

 if (qla2x00_reset_active(vha))
  return ((void*)0);

 return __qla2x00_alloc_iocbs(qpair, sp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int dpc_flags; int loop_state; } ;
struct TYPE_3__ {int * fcport; } ;
struct TYPE_4__ {TYPE_1__ fcport; } ;
struct qla_work_evt {TYPE_2__ u; } ;
typedef int fc_port_t ;


 int LOOP_READY ;
 int LOOP_UP ;
 int QLA_EVT_GFPNID ;
 int QLA_FUNCTION_FAILED ;
 int UNLOADING ;
 int atomic_read (int *) ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;
 scalar_t__ test_bit (int ,int *) ;

int qla24xx_post_gfpnid_work(struct scsi_qla_host *vha, fc_port_t *fcport)
{
 struct qla_work_evt *e;
 int ls;

 ls = atomic_read(&vha->loop_state);
 if (((ls != LOOP_READY) && (ls != LOOP_UP)) ||
  test_bit(UNLOADING, &vha->dpc_flags))
  return 0;

 e = qla2x00_alloc_work(vha, QLA_EVT_GFPNID);
 if (!e)
  return QLA_FUNCTION_FAILED;

 e->u.fcport.fcport = fcport;
 return qla2x00_post_work(vha, e);
}

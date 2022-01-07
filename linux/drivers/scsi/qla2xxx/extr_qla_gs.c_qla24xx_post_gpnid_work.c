
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int dpc_flags; scalar_t__ vp_idx; } ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ gpnid; } ;
struct qla_work_evt {TYPE_2__ u; } ;
typedef int port_id_t ;


 int QLA_EVT_GPNID ;
 int QLA_FUNCTION_FAILED ;
 int UNLOADING ;
 int VPORT_DELETE ;
 struct qla_work_evt* qla2x00_alloc_work (struct scsi_qla_host*,int ) ;
 int qla2x00_post_work (struct scsi_qla_host*,struct qla_work_evt*) ;
 scalar_t__ test_bit (int ,int *) ;

int qla24xx_post_gpnid_work(struct scsi_qla_host *vha, port_id_t *id)
{
 struct qla_work_evt *e;

 if (test_bit(UNLOADING, &vha->dpc_flags) ||
     (vha->vp_idx && test_bit(VPORT_DELETE, &vha->dpc_flags)))
  return 0;

 e = qla2x00_alloc_work(vha, QLA_EVT_GPNID);
 if (!e)
  return QLA_FUNCTION_FAILED;

 e->u.gpnid.id = *id;
 return qla2x00_post_work(vha, e);
}

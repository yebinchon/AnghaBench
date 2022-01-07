
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qla_qpair {int dummy; } ;
struct TYPE_4__ {int iocbs; int elem; int cmd_type; struct qla_qpair* qpair; int * vha; int * fcport; } ;
typedef TYPE_1__ srb_t ;
typedef int scsi_qla_host_t ;
typedef int fc_port_t ;


 int INIT_LIST_HEAD (int *) ;
 int TYPE_SRB ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void qla2xxx_init_sp(srb_t *sp, scsi_qla_host_t *vha,
       struct qla_qpair *qpair, fc_port_t *fcport)
{
 memset(sp, 0, sizeof(*sp));
 sp->fcport = fcport;
 sp->iocbs = 1;
 sp->vha = vha;
 sp->qpair = qpair;
 sp->cmd_type = TYPE_SRB;
 INIT_LIST_HEAD(&sp->elem);
}

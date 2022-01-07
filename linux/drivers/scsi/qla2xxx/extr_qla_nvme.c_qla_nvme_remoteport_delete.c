
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qla_nvme_rport {TYPE_1__* fcport; } ;
struct nvme_fc_remote_port {struct qla_nvme_rport* private; } ;
struct TYPE_3__ {int nvme_del_done; int port_name; int vha; int nvme_flag; int * nvme_remote_port; } ;
typedef TYPE_1__ fc_port_t ;


 int NVME_FLAG_DELETING ;
 int NVME_FLAG_REGISTERED ;
 int complete (int *) ;
 int ql_log (int ,int ,int,char*,TYPE_1__*,int ) ;
 int ql_log_info ;

__attribute__((used)) static void qla_nvme_remoteport_delete(struct nvme_fc_remote_port *rport)
{
 fc_port_t *fcport;
 struct qla_nvme_rport *qla_rport = rport->private;

 fcport = qla_rport->fcport;
 fcport->nvme_remote_port = ((void*)0);
 fcport->nvme_flag &= ~NVME_FLAG_REGISTERED;
 fcport->nvme_flag &= ~NVME_FLAG_DELETING;
 ql_log(ql_log_info, fcport->vha, 0x2110,
     "remoteport_delete of %p %8phN completed.\n",
     fcport, fcport->port_name);
 complete(&fcport->nvme_del_done);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_qla_host {int nvme_del_done; int * nvme_local_port; } ;
struct nvme_fc_local_port {struct scsi_qla_host* private; } ;


 int complete (int *) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,int *) ;
 int ql_log_info ;

__attribute__((used)) static void qla_nvme_localport_delete(struct nvme_fc_local_port *lport)
{
 struct scsi_qla_host *vha = lport->private;

 ql_log(ql_log_info, vha, 0x210f,
     "localport delete of %p completed.\n", vha->nvme_local_port);
 vha->nvme_local_port = ((void*)0);
 complete(&vha->nvme_del_done);
}

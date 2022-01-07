
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct qedi_ctx {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 struct qedi_ctx* iscsi_host_priv (struct Scsi_Host*) ;
 int qedi_recover_all_conns (struct qedi_ctx*) ;

__attribute__((used)) static int qedi_eh_host_reset(struct scsi_cmnd *cmd)
{
 struct Scsi_Host *shost = cmd->device->host;
 struct qedi_ctx *qedi;

 qedi = iscsi_host_priv(shost);

 return qedi_recover_all_conns(qedi);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct ipr_resource_entry {int in_erp; } ;
struct ipr_cmd_pkt {int * cdb; int request_type; } ;
struct TYPE_3__ {struct ipr_cmd_pkt cmd_pkt; } ;
struct ipr_cmnd {TYPE_1__ ioarcb; struct scsi_cmnd* scsi_cmd; } ;
struct TYPE_4__ {int simple_tags; struct ipr_resource_entry* hostdata; } ;


 int IPR_CANCEL_ALL_REQUESTS ;
 int IPR_CANCEL_ALL_TIMEOUT ;
 int IPR_RQTYPE_IOACMD ;
 int __ipr_erp_request_sense (struct ipr_cmnd*) ;
 int ipr_do_req (struct ipr_cmnd*,int ,int ,int ) ;
 int ipr_erp_request_sense ;
 int ipr_reinit_ipr_cmnd_for_erp (struct ipr_cmnd*) ;
 int ipr_timeout ;

__attribute__((used)) static void ipr_erp_cancel_all(struct ipr_cmnd *ipr_cmd)
{
 struct scsi_cmnd *scsi_cmd = ipr_cmd->scsi_cmd;
 struct ipr_resource_entry *res = scsi_cmd->device->hostdata;
 struct ipr_cmd_pkt *cmd_pkt;

 res->in_erp = 1;

 ipr_reinit_ipr_cmnd_for_erp(ipr_cmd);

 if (!scsi_cmd->device->simple_tags) {
  __ipr_erp_request_sense(ipr_cmd);
  return;
 }

 cmd_pkt = &ipr_cmd->ioarcb.cmd_pkt;
 cmd_pkt->request_type = IPR_RQTYPE_IOACMD;
 cmd_pkt->cdb[0] = IPR_CANCEL_ALL_REQUESTS;

 ipr_do_req(ipr_cmd, ipr_erp_request_sense, ipr_timeout,
     IPR_CANCEL_ALL_TIMEOUT);
}

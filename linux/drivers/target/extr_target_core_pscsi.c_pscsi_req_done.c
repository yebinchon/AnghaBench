
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct se_cmd {scalar_t__ data_length; struct pscsi_plugin_task* priv; } ;
struct request {struct se_cmd* end_io_data; } ;
struct pscsi_plugin_task {int * pscsi_cdb; } ;
typedef int blk_status_t ;
struct TYPE_2__ {int result; scalar_t__ resid_len; int sense; } ;



 int SAM_STAT_CHECK_CONDITION ;
 int blk_put_request (struct request*) ;
 int host_byte (int) ;
 int kfree (struct pscsi_plugin_task*) ;
 int pr_debug (char*,struct se_cmd*,int ,int) ;
 int pscsi_complete_cmd (struct se_cmd*,int,int ) ;
 TYPE_1__* scsi_req (struct request*) ;
 int status_byte (int) ;
 int target_complete_cmd (struct se_cmd*,int ) ;
 int target_complete_cmd_with_length (struct se_cmd*,int,scalar_t__) ;

__attribute__((used)) static void pscsi_req_done(struct request *req, blk_status_t status)
{
 struct se_cmd *cmd = req->end_io_data;
 struct pscsi_plugin_task *pt = cmd->priv;
 int result = scsi_req(req)->result;
 u8 scsi_status = status_byte(result) << 1;

 if (scsi_status) {
  pr_debug("PSCSI Status Byte exception at cmd: %p CDB:"
   " 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
   result);
 }

 pscsi_complete_cmd(cmd, scsi_status, scsi_req(req)->sense);

 switch (host_byte(result)) {
 case 128:
  target_complete_cmd_with_length(cmd, scsi_status,
   cmd->data_length - scsi_req(req)->resid_len);
  break;
 default:
  pr_debug("PSCSI Host Byte exception at cmd: %p CDB:"
   " 0x%02x Result: 0x%08x\n", cmd, pt->pscsi_cdb[0],
   result);
  target_complete_cmd(cmd, SAM_STAT_CHECK_CONDITION);
  break;
 }

 blk_put_request(req);
 kfree(pt);
}

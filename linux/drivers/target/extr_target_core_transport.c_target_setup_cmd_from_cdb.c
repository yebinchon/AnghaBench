
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct se_device {TYPE_1__* transport; } ;
struct se_cmd {TYPE_6__* se_lun; int se_cmd_flags; int * t_task_cdb; TYPE_4__* se_sess; TYPE_2__* se_tfo; int * __t_task_cdb; struct se_device* se_dev; } ;
typedef scalar_t__ sense_reason_t ;
struct TYPE_11__ {int cmd_pdus; } ;
struct TYPE_12__ {TYPE_5__ lun_stats; } ;
struct TYPE_10__ {TYPE_3__* se_node_acl; } ;
struct TYPE_9__ {int initiatorname; } ;
struct TYPE_8__ {int fabric_name; } ;
struct TYPE_7__ {scalar_t__ (* parse_cdb ) (struct se_cmd*) ;} ;


 int GFP_KERNEL ;
 int SCF_SUPPORTED_SAM_OPCODE ;
 unsigned long SCSI_MAX_VARLEN_CDB_SIZE ;
 scalar_t__ TCM_INVALID_CDB_FIELD ;
 scalar_t__ TCM_OUT_OF_RESOURCES ;
 scalar_t__ TCM_UNSUPPORTED_SCSI_OPCODE ;
 int atomic_long_inc (int *) ;
 int * kzalloc (int,int ) ;
 int memcpy (int *,unsigned char*,int) ;
 int pr_err (char*,int,unsigned long) ;
 int pr_warn_ratelimited (char*,int ,int ,int ) ;
 int scsi_command_size (unsigned char*) ;
 scalar_t__ stub1 (struct se_cmd*) ;
 int trace_target_sequencer_start (struct se_cmd*) ;
 scalar_t__ transport_check_alloc_task_attr (struct se_cmd*) ;

sense_reason_t
target_setup_cmd_from_cdb(struct se_cmd *cmd, unsigned char *cdb)
{
 struct se_device *dev = cmd->se_dev;
 sense_reason_t ret;





 if (scsi_command_size(cdb) > SCSI_MAX_VARLEN_CDB_SIZE) {
  pr_err("Received SCSI CDB with command_size: %d that"
   " exceeds SCSI_MAX_VARLEN_CDB_SIZE: %d\n",
   scsi_command_size(cdb), SCSI_MAX_VARLEN_CDB_SIZE);
  return TCM_INVALID_CDB_FIELD;
 }





 if (scsi_command_size(cdb) > sizeof(cmd->__t_task_cdb)) {
  cmd->t_task_cdb = kzalloc(scsi_command_size(cdb),
      GFP_KERNEL);
  if (!cmd->t_task_cdb) {
   pr_err("Unable to allocate cmd->t_task_cdb"
    " %u > sizeof(cmd->__t_task_cdb): %lu ops\n",
    scsi_command_size(cdb),
    (unsigned long)sizeof(cmd->__t_task_cdb));
   return TCM_OUT_OF_RESOURCES;
  }
 } else
  cmd->t_task_cdb = &cmd->__t_task_cdb[0];



 memcpy(cmd->t_task_cdb, cdb, scsi_command_size(cdb));

 trace_target_sequencer_start(cmd);

 ret = dev->transport->parse_cdb(cmd);
 if (ret == TCM_UNSUPPORTED_SCSI_OPCODE)
  pr_warn_ratelimited("%s/%s: Unsupported SCSI Opcode 0x%02x, sending CHECK_CONDITION.\n",
        cmd->se_tfo->fabric_name,
        cmd->se_sess->se_node_acl->initiatorname,
        cmd->t_task_cdb[0]);
 if (ret)
  return ret;

 ret = transport_check_alloc_task_attr(cmd);
 if (ret)
  return ret;

 cmd->se_cmd_flags |= SCF_SUPPORTED_SAM_OPCODE;
 atomic_long_inc(&cmd->se_lun->lun_stats.cmd_pdus);
 return 0;
}

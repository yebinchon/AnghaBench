
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int block_size; } ;
struct se_device {TYPE_3__* transport; TYPE_2__ dev_attrib; } ;
struct se_cmd {unsigned int data_length; scalar_t__ data_direction; int se_cmd_flags; unsigned int residual_count; int * t_task_cdb; TYPE_1__* se_tfo; scalar_t__ unknown_data_length; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_6__ {int name; } ;
struct TYPE_4__ {int fabric_name; } ;


 scalar_t__ DMA_TO_DEVICE ;
 int SCF_OVERFLOW_BIT ;
 int SCF_SCSI_DATA_CDB ;
 int SCF_UNDERFLOW_BIT ;
 int TCM_INVALID_CDB_FIELD ;
 int pr_err (char*,int ) ;
 int pr_err_ratelimited (char*) ;
 int pr_warn_ratelimited (char*,int ,unsigned int,unsigned int,int ) ;
 int target_check_max_data_sg_nents (struct se_cmd*,struct se_device*,unsigned int) ;

sense_reason_t
target_cmd_size_check(struct se_cmd *cmd, unsigned int size)
{
 struct se_device *dev = cmd->se_dev;

 if (cmd->unknown_data_length) {
  cmd->data_length = size;
 } else if (size != cmd->data_length) {
  pr_warn_ratelimited("TARGET_CORE[%s]: Expected Transfer Length:"
   " %u does not match SCSI CDB Length: %u for SAM Opcode:"
   " 0x%02x\n", cmd->se_tfo->fabric_name,
    cmd->data_length, size, cmd->t_task_cdb[0]);

  if (cmd->data_direction == DMA_TO_DEVICE) {
   if (cmd->se_cmd_flags & SCF_SCSI_DATA_CDB) {
    pr_err_ratelimited("Rejecting underflow/overflow"
         " for WRITE data CDB\n");
    return TCM_INVALID_CDB_FIELD;
   }






   if (size > cmd->data_length) {
    pr_err_ratelimited("Rejecting overflow for"
         " WRITE control CDB\n");
    return TCM_INVALID_CDB_FIELD;
   }
  }




  if (dev->dev_attrib.block_size != 512) {
   pr_err("Failing OVERFLOW/UNDERFLOW for LBA op"
    " CDB on non 512-byte sector setup subsystem"
    " plugin: %s\n", dev->transport->name);

   return TCM_INVALID_CDB_FIELD;
  }






  if (size > cmd->data_length) {
   cmd->se_cmd_flags |= SCF_OVERFLOW_BIT;
   cmd->residual_count = (size - cmd->data_length);
  } else {
   cmd->se_cmd_flags |= SCF_UNDERFLOW_BIT;
   cmd->residual_count = (cmd->data_length - size);
   cmd->data_length = size;
  }
 }

 return target_check_max_data_sg_nents(cmd, dev, size);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dma_ctrl_to_host; int no_autosense; } ;
struct TYPE_4__ {int ioctl_opcode; int opdev; TYPE_1__ control; int id; int opcode; } ;
union myrs_cmd_mbox {TYPE_2__ dev_op; } ;
struct myrs_cmdblk {unsigned char status; union myrs_cmd_mbox mbox; } ;
struct myrs_hba {int dcmd_mutex; struct myrs_cmdblk dcmd_blk; } ;
typedef enum myrs_opdev { ____Placeholder_myrs_opdev } myrs_opdev ;
typedef enum myrs_ioctl_opcode { ____Placeholder_myrs_ioctl_opcode } myrs_ioctl_opcode ;


 int MYRS_CMD_OP_IOCTL ;
 int MYRS_DCMD_TAG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int myrs_exec_cmd (struct myrs_hba*,struct myrs_cmdblk*) ;
 int myrs_reset_cmd (struct myrs_cmdblk*) ;

__attribute__((used)) static unsigned char myrs_dev_op(struct myrs_hba *cs,
  enum myrs_ioctl_opcode opcode, enum myrs_opdev opdev)
{
 struct myrs_cmdblk *cmd_blk = &cs->dcmd_blk;
 union myrs_cmd_mbox *mbox = &cmd_blk->mbox;
 unsigned char status;

 mutex_lock(&cs->dcmd_mutex);
 myrs_reset_cmd(cmd_blk);
 mbox->dev_op.opcode = MYRS_CMD_OP_IOCTL;
 mbox->dev_op.id = MYRS_DCMD_TAG;
 mbox->dev_op.control.dma_ctrl_to_host = 1;
 mbox->dev_op.control.no_autosense = 1;
 mbox->dev_op.ioctl_opcode = opcode;
 mbox->dev_op.opdev = opdev;
 myrs_exec_cmd(cs, cmd_blk);
 status = cmd_blk->status;
 mutex_unlock(&cs->dcmd_mutex);
 return status;
}

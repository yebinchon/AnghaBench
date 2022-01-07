
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; int target; int channel; int id; int opcode; } ;
union myrb_cmd_mbox {TYPE_1__ type3D; } ;
struct scsi_device {int id; int channel; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;
struct myrb_hba {int dcmd_mutex; struct myrb_cmdblk dcmd_blk; } ;
typedef enum myrb_devstate { ____Placeholder_myrb_devstate } myrb_devstate ;


 int MYRB_CMD_START_DEVICE ;
 int MYRB_DCMD_TAG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned short myrb_exec_cmd (struct myrb_hba*,struct myrb_cmdblk*) ;

__attribute__((used)) static unsigned short myrb_set_pdev_state(struct myrb_hba *cb,
  struct scsi_device *sdev, enum myrb_devstate state)
{
 struct myrb_cmdblk *cmd_blk = &cb->dcmd_blk;
 union myrb_cmd_mbox *mbox = &cmd_blk->mbox;
 unsigned short status;

 mutex_lock(&cb->dcmd_mutex);
 mbox->type3D.opcode = MYRB_CMD_START_DEVICE;
 mbox->type3D.id = MYRB_DCMD_TAG;
 mbox->type3D.channel = sdev->channel;
 mbox->type3D.target = sdev->id;
 mbox->type3D.state = state & 0x1F;
 status = myrb_exec_cmd(cb, cmd_blk);
 mutex_unlock(&cb->dcmd_mutex);

 return status;
}

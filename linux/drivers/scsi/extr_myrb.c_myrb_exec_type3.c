
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opcode; int addr; int id; } ;
union myrb_cmd_mbox {TYPE_1__ type3; } ;
struct myrb_cmdblk {union myrb_cmd_mbox mbox; } ;
struct myrb_hba {int dcmd_mutex; struct myrb_cmdblk dcmd_blk; } ;
typedef enum myrb_cmd_opcode { ____Placeholder_myrb_cmd_opcode } myrb_cmd_opcode ;
typedef int dma_addr_t ;


 int MYRB_DCMD_TAG ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned short myrb_exec_cmd (struct myrb_hba*,struct myrb_cmdblk*) ;
 int myrb_reset_cmd (struct myrb_cmdblk*) ;

__attribute__((used)) static unsigned short myrb_exec_type3(struct myrb_hba *cb,
  enum myrb_cmd_opcode op, dma_addr_t addr)
{
 struct myrb_cmdblk *cmd_blk = &cb->dcmd_blk;
 union myrb_cmd_mbox *mbox = &cmd_blk->mbox;
 unsigned short status;

 mutex_lock(&cb->dcmd_mutex);
 myrb_reset_cmd(cmd_blk);
 mbox->type3.id = MYRB_DCMD_TAG;
 mbox->type3.opcode = op;
 mbox->type3.addr = addr;
 status = myrb_exec_cmd(cb, cmd_blk);
 mutex_unlock(&cb->dcmd_mutex);
 return status;
}

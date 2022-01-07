
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrb_hba {int dummy; } ;
struct myrb_cmdblk {int * completion; } ;


 int complete (int *) ;

__attribute__((used)) static void myrb_handle_cmdblk(struct myrb_hba *cb, struct myrb_cmdblk *cmd_blk)
{
 if (!cmd_blk)
  return;

 if (cmd_blk->completion) {
  complete(cmd_blk->completion);
  cmd_blk->completion = ((void*)0);
 }
}

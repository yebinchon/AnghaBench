
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union myrb_cmd_mbox {int dummy; } myrb_cmd_mbox ;
struct myrb_cmdblk {scalar_t__ status; union myrb_cmd_mbox mbox; } ;


 int memset (union myrb_cmd_mbox*,int ,int) ;

__attribute__((used)) static inline void myrb_reset_cmd(struct myrb_cmdblk *cmd_blk)
{
 union myrb_cmd_mbox *mbox = &cmd_blk->mbox;

 memset(mbox, 0, sizeof(union myrb_cmd_mbox));
 cmd_blk->status = 0;
}

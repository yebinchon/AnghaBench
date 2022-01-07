
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union myrs_cmd_mbox {int dummy; } myrs_cmd_mbox ;
struct myrs_cmdblk {scalar_t__ status; union myrs_cmd_mbox mbox; } ;


 int memset (union myrs_cmd_mbox*,int ,int) ;

__attribute__((used)) static inline void myrs_reset_cmd(struct myrs_cmdblk *cmd_blk)
{
 union myrs_cmd_mbox *mbox = &cmd_blk->mbox;

 memset(mbox, 0, sizeof(union myrs_cmd_mbox));
 cmd_blk->status = 0;
}

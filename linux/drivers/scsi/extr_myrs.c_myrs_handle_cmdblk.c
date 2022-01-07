
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_hba {int dummy; } ;
struct myrs_cmdblk {int * complete; } ;


 int complete (int *) ;

__attribute__((used)) static void myrs_handle_cmdblk(struct myrs_hba *cs, struct myrs_cmdblk *cmd_blk)
{
 if (!cmd_blk)
  return;

 if (cmd_blk->complete) {
  complete(cmd_blk->complete);
  cmd_blk->complete = ((void*)0);
 }
}

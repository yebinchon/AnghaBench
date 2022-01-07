
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipr_cmnd {int completion; int * sibling; } ;


 int complete (int *) ;

__attribute__((used)) static void ipr_internal_cmd_done(struct ipr_cmnd *ipr_cmd)
{
 if (ipr_cmd->sibling)
  ipr_cmd->sibling = ((void*)0);
 else
  complete(&ipr_cmd->completion);
}

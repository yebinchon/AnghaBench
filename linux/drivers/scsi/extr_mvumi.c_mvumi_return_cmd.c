
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hba {int cmd_pool; } ;
struct mvumi_cmd {int queue_pointer; int * scmd; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void mvumi_return_cmd(struct mvumi_hba *mhba,
      struct mvumi_cmd *cmd)
{
 cmd->scmd = ((void*)0);
 list_add_tail(&cmd->queue_pointer, &mhba->cmd_pool);
}

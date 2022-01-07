
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int cmd_kref; } ;


 int kref_put (int *,int ) ;
 int target_release_cmd_kref ;

int target_put_sess_cmd(struct se_cmd *se_cmd)
{
 return kref_put(&se_cmd->cmd_kref, target_release_cmd_kref);
}

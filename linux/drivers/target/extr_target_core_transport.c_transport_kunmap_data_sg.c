
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int t_data_nents; int * t_data_vmap; int t_data_sg; } ;


 int kunmap (int ) ;
 int sg_page (int ) ;
 int vunmap (int *) ;

void transport_kunmap_data_sg(struct se_cmd *cmd)
{
 if (!cmd->t_data_nents) {
  return;
 } else if (cmd->t_data_nents == 1) {
  kunmap(sg_page(cmd->t_data_sg));
  return;
 }

 vunmap(cmd->t_data_vmap);
 cmd->t_data_vmap = ((void*)0);
}

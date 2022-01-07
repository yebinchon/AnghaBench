
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {scalar_t__ t_data_nents_orig; scalar_t__ t_data_nents; int * t_data_sg_orig; int * t_data_sg; } ;


 int kfree (int *) ;

__attribute__((used)) static inline void transport_reset_sgl_orig(struct se_cmd *cmd)
{




 if (!cmd->t_data_sg_orig)
  return;

 kfree(cmd->t_data_sg);
 cmd->t_data_sg = cmd->t_data_sg_orig;
 cmd->t_data_sg_orig = ((void*)0);
 cmd->t_data_nents = cmd->t_data_nents_orig;
 cmd->t_data_nents_orig = 0;
}

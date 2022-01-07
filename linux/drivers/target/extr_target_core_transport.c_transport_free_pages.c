
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int se_cmd_flags; scalar_t__ t_bidi_data_nents; int * t_bidi_data_sg; scalar_t__ t_data_nents; int * t_data_sg; scalar_t__ t_prot_nents; int * t_prot_sg; } ;


 int SCF_COMPARE_AND_WRITE ;
 int SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC ;
 int SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC ;
 int target_free_sgl (int *,scalar_t__) ;
 int transport_reset_sgl_orig (struct se_cmd*) ;

__attribute__((used)) static inline void transport_free_pages(struct se_cmd *cmd)
{
 if (!(cmd->se_cmd_flags & SCF_PASSTHROUGH_PROT_SG_TO_MEM_NOALLOC)) {
  target_free_sgl(cmd->t_prot_sg, cmd->t_prot_nents);
  cmd->t_prot_sg = ((void*)0);
  cmd->t_prot_nents = 0;
 }

 if (cmd->se_cmd_flags & SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC) {




  if (cmd->se_cmd_flags & SCF_COMPARE_AND_WRITE) {
   target_free_sgl(cmd->t_bidi_data_sg,
        cmd->t_bidi_data_nents);
   cmd->t_bidi_data_sg = ((void*)0);
   cmd->t_bidi_data_nents = 0;
  }
  transport_reset_sgl_orig(cmd);
  return;
 }
 transport_reset_sgl_orig(cmd);

 target_free_sgl(cmd->t_data_sg, cmd->t_data_nents);
 cmd->t_data_sg = ((void*)0);
 cmd->t_data_nents = 0;

 target_free_sgl(cmd->t_bidi_data_sg, cmd->t_bidi_data_nents);
 cmd->t_bidi_data_sg = ((void*)0);
 cmd->t_bidi_data_nents = 0;
}

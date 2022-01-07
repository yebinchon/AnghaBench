
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcmu_cmd {struct se_cmd* se_cmd; } ;
struct se_cmd {int se_cmd_flags; TYPE_1__* t_bidi_data_sg; scalar_t__ t_bidi_data_nents; int data_length; } ;
struct TYPE_2__ {int length; } ;


 int BUG_ON (int) ;
 int DATA_BLOCK_SIZE ;
 int SCF_BIDI ;
 size_t round_up (int ,int ) ;

__attribute__((used)) static inline size_t tcmu_cmd_get_data_length(struct tcmu_cmd *tcmu_cmd)
{
 struct se_cmd *se_cmd = tcmu_cmd->se_cmd;
 size_t data_length = round_up(se_cmd->data_length, DATA_BLOCK_SIZE);

 if (se_cmd->se_cmd_flags & SCF_BIDI) {
  BUG_ON(!(se_cmd->t_bidi_data_sg && se_cmd->t_bidi_data_nents));
  data_length += round_up(se_cmd->t_bidi_data_sg->length,
    DATA_BLOCK_SIZE);
 }

 return data_length;
}

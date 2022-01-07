
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct se_cmd {int prot_op; int data_length; TYPE_1__* se_sess; int pi_err; int t_prot_sg; int t_task_lba; TYPE_3__* se_dev; } ;
struct TYPE_5__ {int block_size; } ;
struct TYPE_6__ {TYPE_2__ dev_attrib; } ;
struct TYPE_4__ {int const sup_prot_ops; } ;




 int ilog2 (int ) ;
 int sbc_dif_generate (struct se_cmd*) ;
 int sbc_dif_verify (struct se_cmd*,int ,int,int ,int ,int ) ;

__attribute__((used)) static bool target_read_prot_action(struct se_cmd *cmd)
{
 switch (cmd->prot_op) {
 case 128:
  if (!(cmd->se_sess->sup_prot_ops & 128)) {
   u32 sectors = cmd->data_length >>
      ilog2(cmd->se_dev->dev_attrib.block_size);

   cmd->pi_err = sbc_dif_verify(cmd, cmd->t_task_lba,
           sectors, 0, cmd->t_prot_sg,
           0);
   if (cmd->pi_err)
    return 1;
  }
  break;
 case 129:
  if (cmd->se_sess->sup_prot_ops & 129)
   break;

  sbc_dif_generate(cmd);
  break;
 default:
  break;
 }

 return 0;
}

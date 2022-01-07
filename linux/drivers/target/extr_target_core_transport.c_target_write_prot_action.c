
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct se_cmd {int prot_op; int data_length; int pi_err; int t_state_lock; int transport_state; int t_prot_sg; int t_task_lba; TYPE_3__* se_dev; TYPE_1__* se_sess; } ;
struct TYPE_5__ {int block_size; } ;
struct TYPE_6__ {TYPE_2__ dev_attrib; } ;
struct TYPE_4__ {int const sup_prot_ops; } ;


 int CMD_T_SENT ;


 int ilog2 (int ) ;
 int sbc_dif_generate (struct se_cmd*) ;
 int sbc_dif_verify (struct se_cmd*,int ,int,int ,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int transport_generic_request_failure (struct se_cmd*,int ) ;
 int unlikely (int ) ;

__attribute__((used)) static int target_write_prot_action(struct se_cmd *cmd)
{
 u32 sectors;





 switch (cmd->prot_op) {
 case 129:
  if (!(cmd->se_sess->sup_prot_ops & 129))
   sbc_dif_generate(cmd);
  break;
 case 128:
  if (cmd->se_sess->sup_prot_ops & 128)
   break;

  sectors = cmd->data_length >> ilog2(cmd->se_dev->dev_attrib.block_size);
  cmd->pi_err = sbc_dif_verify(cmd, cmd->t_task_lba,
          sectors, 0, cmd->t_prot_sg, 0);
  if (unlikely(cmd->pi_err)) {
   spin_lock_irq(&cmd->t_state_lock);
   cmd->transport_state &= ~CMD_T_SENT;
   spin_unlock_irq(&cmd->t_state_lock);
   transport_generic_request_failure(cmd, cmd->pi_err);
   return -1;
  }
  break;
 default:
  break;
 }

 return 0;
}

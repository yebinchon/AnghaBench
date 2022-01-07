
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int data_direction; int t_data_nents; int t_data_sg; struct sbc_ops* protocol_data; } ;
struct sbc_ops {int (* execute_rw ) (struct se_cmd*,int ,int ,int ) ;} ;
typedef int sense_reason_t ;


 int stub1 (struct se_cmd*,int ,int ,int ) ;

__attribute__((used)) static sense_reason_t
sbc_execute_rw(struct se_cmd *cmd)
{
 struct sbc_ops *ops = cmd->protocol_data;

 return ops->execute_rw(cmd, cmd->t_data_sg, cmd->t_data_nents,
          cmd->data_direction);
}

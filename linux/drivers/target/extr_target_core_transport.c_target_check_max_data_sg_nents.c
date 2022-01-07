
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {unsigned int block_size; } ;
struct se_device {unsigned int prot_length; TYPE_2__ dev_attrib; } ;
struct se_cmd {unsigned int data_length; int se_cmd_flags; unsigned int residual_count; unsigned int prot_length; TYPE_1__* se_tfo; } ;
typedef int sense_reason_t ;
struct TYPE_3__ {unsigned int max_data_sg_nents; } ;


 unsigned int PAGE_SIZE ;
 int SCF_OVERFLOW_BIT ;
 int SCF_UNDERFLOW_BIT ;
 int TCM_NO_SENSE ;

__attribute__((used)) static sense_reason_t
target_check_max_data_sg_nents(struct se_cmd *cmd, struct se_device *dev,
          unsigned int size)
{
 u32 mtl;

 if (!cmd->se_tfo->max_data_sg_nents)
  return TCM_NO_SENSE;






 mtl = (cmd->se_tfo->max_data_sg_nents * PAGE_SIZE);
 if (cmd->data_length > mtl) {
  if (cmd->se_cmd_flags & SCF_OVERFLOW_BIT) {
   cmd->residual_count = (size - mtl);
  } else if (cmd->se_cmd_flags & SCF_UNDERFLOW_BIT) {
   u32 orig_dl = size + cmd->residual_count;
   cmd->residual_count = (orig_dl - mtl);
  } else {
   cmd->se_cmd_flags |= SCF_UNDERFLOW_BIT;
   cmd->residual_count = (cmd->data_length - mtl);
  }
  cmd->data_length = mtl;




  if (cmd->prot_length) {
   u32 sectors = (mtl / dev->dev_attrib.block_size);
   cmd->prot_length = dev->prot_length * sectors;
  }
 }
 return TCM_NO_SENSE;
}

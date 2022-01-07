
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int block_size; } ;
struct se_device {int caw_sem; TYPE_1__ dev_attrib; } ;
struct se_cmd {int data_length; int t_task_nolb; int * transport_complete_callback; int t_bidi_data_nents; int t_bidi_data_sg; struct se_device* se_dev; struct sbc_ops* protocol_data; } ;
struct sbc_ops {scalar_t__ (* execute_rw ) (struct se_cmd*,int ,int ,int ) ;} ;
typedef scalar_t__ sense_reason_t ;


 int DMA_FROM_DEVICE ;
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 scalar_t__ TCM_NO_SENSE ;
 int down_interruptible (int *) ;
 scalar_t__ stub1 (struct se_cmd*,int ,int ,int ) ;
 int up (int *) ;

__attribute__((used)) static sense_reason_t
sbc_compare_and_write(struct se_cmd *cmd)
{
 struct sbc_ops *ops = cmd->protocol_data;
 struct se_device *dev = cmd->se_dev;
 sense_reason_t ret;
 int rc;




 rc = down_interruptible(&dev->caw_sem);
 if (rc != 0) {
  cmd->transport_complete_callback = ((void*)0);
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }





 cmd->data_length = cmd->t_task_nolb * dev->dev_attrib.block_size;

 ret = ops->execute_rw(cmd, cmd->t_bidi_data_sg, cmd->t_bidi_data_nents,
         DMA_FROM_DEVICE);
 if (ret) {
  cmd->transport_complete_callback = ((void*)0);
  up(&dev->caw_sem);
  return ret;
 }





 return TCM_NO_SENSE;
}

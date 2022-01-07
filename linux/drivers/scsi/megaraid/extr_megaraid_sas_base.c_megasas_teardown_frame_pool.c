
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct megasas_instance {int max_mfi_cmds; int * sense_dma_pool; int * frame_dma_pool; struct megasas_cmd** cmd_list; } ;
struct megasas_cmd {int sense_phys_addr; scalar_t__ sense; int frame_phys_addr; scalar_t__ frame; } ;


 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,scalar_t__,int ) ;

__attribute__((used)) static void megasas_teardown_frame_pool(struct megasas_instance *instance)
{
 int i;
 u16 max_cmd = instance->max_mfi_cmds;
 struct megasas_cmd *cmd;

 if (!instance->frame_dma_pool)
  return;




 for (i = 0; i < max_cmd; i++) {

  cmd = instance->cmd_list[i];

  if (cmd->frame)
   dma_pool_free(instance->frame_dma_pool, cmd->frame,
          cmd->frame_phys_addr);

  if (cmd->sense)
   dma_pool_free(instance->sense_dma_pool, cmd->sense,
          cmd->sense_phys_addr);
 }




 dma_pool_destroy(instance->frame_dma_pool);
 dma_pool_destroy(instance->sense_dma_pool);

 instance->frame_dma_pool = ((void*)0);
 instance->sense_dma_pool = ((void*)0);
}

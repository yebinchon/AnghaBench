
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct megasas_instance {int max_mfi_cmds; scalar_t__ adapter_type; int mfi_frame_size; TYPE_1__* pdev; void* sense_dma_pool; int * frame_dma_pool; struct megasas_cmd** cmd_list; } ;
struct megasas_cmd {TYPE_4__* frame; int index; int sense; int sense_phys_addr; int frame_phys_addr; } ;
struct TYPE_7__ {int cmd; } ;
struct TYPE_6__ {scalar_t__ pad_0; int context; } ;
struct TYPE_8__ {TYPE_3__ hdr; TYPE_2__ io; } ;
struct TYPE_5__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_DEBUG ;
 int MEGAMFI_FRAME_SIZE ;
 int MFI_CMD_INVALID ;
 scalar_t__ MFI_SERIES ;
 int cpu_to_le32 (int ) ;
 int dev_printk (int ,int *,char*) ;
 int dma_pool_alloc (void*,int ,int *) ;
 void* dma_pool_create (char*,int *,int,int,int ) ;
 int dma_pool_destroy (int *) ;
 TYPE_4__* dma_pool_zalloc (int *,int ,int *) ;
 int megasas_teardown_frame_pool (struct megasas_instance*) ;
 scalar_t__ reset_devices ;

__attribute__((used)) static int megasas_create_frame_pool(struct megasas_instance *instance)
{
 int i;
 u16 max_cmd;
 u32 frame_count;
 struct megasas_cmd *cmd;

 max_cmd = instance->max_mfi_cmds;
 frame_count = (instance->adapter_type == MFI_SERIES) ?
   (15 + 1) : (3 + 1);
 instance->mfi_frame_size = MEGAMFI_FRAME_SIZE * frame_count;



 instance->frame_dma_pool = dma_pool_create("megasas frame pool",
     &instance->pdev->dev,
     instance->mfi_frame_size, 256, 0);

 if (!instance->frame_dma_pool) {
  dev_printk(KERN_DEBUG, &instance->pdev->dev, "failed to setup frame pool\n");
  return -ENOMEM;
 }

 instance->sense_dma_pool = dma_pool_create("megasas sense pool",
         &instance->pdev->dev, 128,
         4, 0);

 if (!instance->sense_dma_pool) {
  dev_printk(KERN_DEBUG, &instance->pdev->dev, "failed to setup sense pool\n");

  dma_pool_destroy(instance->frame_dma_pool);
  instance->frame_dma_pool = ((void*)0);

  return -ENOMEM;
 }






 for (i = 0; i < max_cmd; i++) {

  cmd = instance->cmd_list[i];

  cmd->frame = dma_pool_zalloc(instance->frame_dma_pool,
         GFP_KERNEL, &cmd->frame_phys_addr);

  cmd->sense = dma_pool_alloc(instance->sense_dma_pool,
         GFP_KERNEL, &cmd->sense_phys_addr);





  if (!cmd->frame || !cmd->sense) {
   dev_printk(KERN_DEBUG, &instance->pdev->dev, "dma_pool_alloc failed\n");
   megasas_teardown_frame_pool(instance);
   return -ENOMEM;
  }

  cmd->frame->io.context = cpu_to_le32(cmd->index);
  cmd->frame->io.pad_0 = 0;
  if ((instance->adapter_type == MFI_SERIES) && reset_devices)
   cmd->frame->hdr.cmd = MFI_CMD_INVALID;
 }

 return 0;
}

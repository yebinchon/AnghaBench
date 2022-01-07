
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int command_block; int command_block_dma; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dma_alloc_coherent (int ,int,int *,int ) ;

__attribute__((used)) static int esp_sbus_map_command_block(struct esp *esp)
{
 esp->command_block = dma_alloc_coherent(esp->dev, 16,
      &esp->command_block_dma,
      GFP_KERNEL);
 if (!esp->command_block)
  return -ENOMEM;
 return 0;
}

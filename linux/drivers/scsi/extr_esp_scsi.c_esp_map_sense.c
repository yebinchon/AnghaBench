
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esp_cmd_entry {uintptr_t sense_dma; scalar_t__ sense_ptr; TYPE_1__* cmd; } ;
struct esp {int flags; int dev; } ;
struct TYPE_2__ {scalar_t__ sense_buffer; } ;


 int DMA_FROM_DEVICE ;
 int ESP_FLAG_NO_DMA_MAP ;
 int SCSI_SENSE_BUFFERSIZE ;
 uintptr_t dma_map_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static void esp_map_sense(struct esp *esp, struct esp_cmd_entry *ent)
{
 ent->sense_ptr = ent->cmd->sense_buffer;
 if (esp->flags & ESP_FLAG_NO_DMA_MAP) {
  ent->sense_dma = (uintptr_t)ent->sense_ptr;
  return;
 }

 ent->sense_dma = dma_map_single(esp->dev, ent->sense_ptr,
     SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
}

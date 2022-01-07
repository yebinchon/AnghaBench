
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp_cmd_entry {int * sense_ptr; int sense_dma; } ;
struct esp {int flags; int dev; } ;


 int DMA_FROM_DEVICE ;
 int ESP_FLAG_NO_DMA_MAP ;
 int SCSI_SENSE_BUFFERSIZE ;
 int dma_unmap_single (int ,int ,int ,int ) ;

__attribute__((used)) static void esp_unmap_sense(struct esp *esp, struct esp_cmd_entry *ent)
{
 if (!(esp->flags & ESP_FLAG_NO_DMA_MAP))
  dma_unmap_single(esp->dev, ent->sense_dma,
     SCSI_SENSE_BUFFERSIZE, DMA_FROM_DEVICE);
 ent->sense_ptr = ((void*)0);
}

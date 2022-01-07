
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct esp {int flags; } ;


 int ESP_FLAG_NO_DMA_MAP ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void esp_unmap_dma(struct esp *esp, struct scsi_cmnd *cmd)
{
 if (!(esp->flags & ESP_FLAG_NO_DMA_MAP))
  scsi_dma_unmap(cmd);
}

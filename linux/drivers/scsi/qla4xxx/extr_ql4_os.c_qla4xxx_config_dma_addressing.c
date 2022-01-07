
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_BIT_MASK (int) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ dma_set_mask_and_coherent (int *,int ) ;

__attribute__((used)) static void qla4xxx_config_dma_addressing(struct scsi_qla_host *ha)
{

 if (dma_set_mask_and_coherent(&ha->pdev->dev, DMA_BIT_MASK(64))) {
  dev_dbg(&ha->pdev->dev,
     "Failed to set 64 bit PCI consistent mask; "
      "using 32 bit.\n");
  dma_set_mask_and_coherent(&ha->pdev->dev, DMA_BIT_MASK(32));
 }
}

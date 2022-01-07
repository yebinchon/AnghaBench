
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sg_entry {int dummy; } ;
struct TYPE_2__ {int dma_handle; int * ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct pci_dev {int dev; } ;
typedef int dma_addr_t ;


 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 int SENSE_SIZE ;
 int TOTAL_SG_ENTRY ;
 int dma_unmap_single (int *,int ,int,int ) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 scalar_t__ scsi_sg_count (struct scsi_cmnd*) ;

__attribute__((used)) static void i91u_unmap_scb(struct pci_dev *pci_dev, struct scsi_cmnd *cmnd)
{

 if (cmnd->SCp.ptr) {
  dma_unmap_single(&pci_dev->dev,
     (dma_addr_t)((unsigned long)cmnd->SCp.ptr),
     SENSE_SIZE, DMA_FROM_DEVICE);
  cmnd->SCp.ptr = ((void*)0);
 }


 if (scsi_sg_count(cmnd)) {
  dma_unmap_single(&pci_dev->dev, cmnd->SCp.dma_handle,
     sizeof(struct sg_entry) * TOTAL_SG_ENTRY,
     DMA_BIDIRECTIONAL);

  scsi_dma_unmap(cmnd);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct CommandControlBlock {struct scsi_cmnd* pcmd; } ;


 int scsi_dma_unmap (struct scsi_cmnd*) ;

__attribute__((used)) static void arcmsr_pci_unmap_dma(struct CommandControlBlock *ccb)
{
 struct scsi_cmnd *pcmd = ccb->pcmd;

 scsi_dma_unmap(pcmd);
}

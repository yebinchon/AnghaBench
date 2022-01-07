
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int overrun_buf; int overrun_dma; } ;
struct TYPE_4__ {TYPE_1__ asc_dvc_var; } ;
struct asc_board {int ioremap_addr; TYPE_2__ dvc_var; int dev; int irq; } ;
struct Scsi_Host {scalar_t__ dma_channel; } ;


 int ASC_DBG (int,char*) ;
 scalar_t__ ASC_NARROW_BOARD (struct asc_board*) ;
 int ASC_OVERRUN_BSIZE ;
 int DMA_FROM_DEVICE ;
 scalar_t__ NO_ISA_DMA ;
 int advansys_wide_free_mem (struct asc_board*) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int free_dma (scalar_t__) ;
 int free_irq (int ,struct Scsi_Host*) ;
 int iounmap (int ) ;
 int kfree (int ) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 struct asc_board* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int advansys_release(struct Scsi_Host *shost)
{
 struct asc_board *board = shost_priv(shost);
 ASC_DBG(1, "begin\n");
 scsi_remove_host(shost);
 free_irq(board->irq, shost);






 if (ASC_NARROW_BOARD(board)) {
  dma_unmap_single(board->dev,
     board->dvc_var.asc_dvc_var.overrun_dma,
     ASC_OVERRUN_BSIZE, DMA_FROM_DEVICE);
  kfree(board->dvc_var.asc_dvc_var.overrun_buf);
 } else {
  iounmap(board->ioremap_addr);
  advansys_wide_free_mem(board);
 }
 scsi_host_put(shost);
 ASC_DBG(1, "end\n");
 return 0;
}

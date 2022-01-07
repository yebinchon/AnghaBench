
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * base_addr; int crq_token; } ;
struct scsi_info {int state; TYPE_2__ cmd_q; TYPE_1__* dma_dev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_BIDIRECTIONAL ;
 int NO_QUEUE ;
 int PAGE_SIZE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void ibmvscsis_destroy_command_q(struct scsi_info *vscsi)
{
 dma_unmap_single(&vscsi->dma_dev->dev, vscsi->cmd_q.crq_token,
    PAGE_SIZE, DMA_BIDIRECTIONAL);
 free_page((unsigned long)vscsi->cmd_q.base_addr);
 vscsi->cmd_q.base_addr = ((void*)0);
 vscsi->state = NO_QUEUE;
}

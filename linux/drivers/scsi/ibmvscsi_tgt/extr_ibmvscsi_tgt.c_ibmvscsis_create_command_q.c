
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct viosrp_crq {int dummy; } ;
struct vio_dev {int dev; } ;
struct TYPE_2__ {int size; int mask; struct viosrp_crq* base_addr; int crq_token; } ;
struct scsi_info {TYPE_1__ cmd_q; struct vio_dev* dma_dev; } ;


 int CRQ_PER_PAGE ;
 int DMA_BIDIRECTIONAL ;
 long ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int dma_map_single (int *,struct viosrp_crq*,int ,int ) ;
 scalar_t__ dma_mapping_error (int *,int ) ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;

__attribute__((used)) static long ibmvscsis_create_command_q(struct scsi_info *vscsi, int num_cmds)
{
 int pages;
 struct vio_dev *vdev = vscsi->dma_dev;


 pages = 1;

 vscsi->cmd_q.size = pages;

 vscsi->cmd_q.base_addr =
  (struct viosrp_crq *)get_zeroed_page(GFP_KERNEL);
 if (!vscsi->cmd_q.base_addr)
  return -ENOMEM;

 vscsi->cmd_q.mask = ((uint)pages * CRQ_PER_PAGE) - 1;

 vscsi->cmd_q.crq_token = dma_map_single(&vdev->dev,
      vscsi->cmd_q.base_addr,
      PAGE_SIZE, DMA_BIDIRECTIONAL);
 if (dma_mapping_error(&vdev->dev, vscsi->cmd_q.crq_token)) {
  free_page((unsigned long)vscsi->cmd_q.base_addr);
  return -ENOMEM;
 }

 return 0;
}

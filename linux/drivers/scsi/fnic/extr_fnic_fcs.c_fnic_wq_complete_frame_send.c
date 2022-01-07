
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq_buf {struct sk_buff* os_buf; int len; int dma_addr; } ;
struct vnic_wq {int vdev; } ;
struct sk_buff {int dummy; } ;
struct fnic {TYPE_1__* pdev; } ;
struct fc_frame {int dummy; } ;
struct cq_desc {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int dev_kfree_skb_irq (int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int fp_skb (struct fc_frame*) ;
 struct fnic* vnic_dev_priv (int ) ;

__attribute__((used)) static void fnic_wq_complete_frame_send(struct vnic_wq *wq,
     struct cq_desc *cq_desc,
     struct vnic_wq_buf *buf, void *opaque)
{
 struct sk_buff *skb = buf->os_buf;
 struct fc_frame *fp = (struct fc_frame *)skb;
 struct fnic *fnic = vnic_dev_priv(wq->vdev);

 dma_unmap_single(&fnic->pdev->dev, buf->dma_addr, buf->len,
    DMA_TO_DEVICE);
 dev_kfree_skb_irq(fp_skb(fp));
 buf->os_buf = ((void*)0);
}

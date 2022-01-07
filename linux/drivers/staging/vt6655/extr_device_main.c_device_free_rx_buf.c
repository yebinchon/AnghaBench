
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnt_rx_desc {struct vnt_rd_info* rd_info; } ;
struct vnt_rd_info {int skb; int skb_dma; } ;
struct vnt_private {int rx_buf_sz; TYPE_1__* pcid; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb (int ) ;
 int dma_unmap_single (int *,int ,int ,int ) ;

__attribute__((used)) static void device_free_rx_buf(struct vnt_private *priv,
          struct vnt_rx_desc *rd)
{
 struct vnt_rd_info *rd_info = rd->rd_info;

 dma_unmap_single(&priv->pcid->dev, rd_info->skb_dma,
    priv->rx_buf_sz, DMA_FROM_DEVICE);
 dev_kfree_skb(rd_info->skb);
}

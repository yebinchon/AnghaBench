
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_5__ {int res_count; } ;
struct TYPE_4__ {int req_count; } ;
struct vnt_rx_desc {TYPE_2__ rd0; TYPE_1__ rd1; struct vnt_rd_info* rd_info; } ;
struct vnt_rd_info {int skb_dma; struct sk_buff* skb; } ;
struct vnt_private {TYPE_3__* pcid; int rx_buf_sz; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_dbg (int *,char*,int) ;
 int dev_kfree_skb_irq (struct sk_buff*) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ vnt_rx_data (struct vnt_private*,struct sk_buff*,int) ;

bool vnt_receive_frame(struct vnt_private *priv, struct vnt_rx_desc *curr_rd)
{
 struct vnt_rd_info *rd_info = curr_rd->rd_info;
 struct sk_buff *skb;
 u16 frame_size;

 skb = rd_info->skb;

 dma_unmap_single(&priv->pcid->dev, rd_info->skb_dma,
    priv->rx_buf_sz, DMA_FROM_DEVICE);

 frame_size = le16_to_cpu(curr_rd->rd1.req_count)
   - le16_to_cpu(curr_rd->rd0.res_count);

 if ((frame_size > 2364) || (frame_size < 33)) {

  dev_dbg(&priv->pcid->dev, "Wrong frame size %d\n", frame_size);
  dev_kfree_skb_irq(skb);
  return 1;
 }

 if (vnt_rx_data(priv, skb, frame_size))
  return 1;

 dev_kfree_skb_irq(skb);

 return 1;
}

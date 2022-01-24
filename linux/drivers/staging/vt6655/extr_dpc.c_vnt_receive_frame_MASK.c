#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  res_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  req_count; } ;
struct vnt_rx_desc {TYPE_2__ rd0; TYPE_1__ rd1; struct vnt_rd_info* rd_info; } ;
struct vnt_rd_info {int /*<<< orphan*/  skb_dma; struct sk_buff* skb; } ;
struct vnt_private {TYPE_3__* pcid; int /*<<< orphan*/  rx_buf_sz; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vnt_private*,struct sk_buff*,int) ; 

bool FUNC5(struct vnt_private *priv, struct vnt_rx_desc *curr_rd)
{
	struct vnt_rd_info *rd_info = curr_rd->rd_info;
	struct sk_buff *skb;
	u16 frame_size;

	skb = rd_info->skb;

	FUNC2(&priv->pcid->dev, rd_info->skb_dma,
			 priv->rx_buf_sz, DMA_FROM_DEVICE);

	frame_size = FUNC3(curr_rd->rd1.req_count)
			- FUNC3(curr_rd->rd0.res_count);

	if ((frame_size > 2364) || (frame_size < 33)) {
		/* Frame Size error drop this packet.*/
		FUNC0(&priv->pcid->dev, "Wrong frame size %d\n", frame_size);
		FUNC1(skb);
		return true;
	}

	if (FUNC4(priv, skb, frame_size))
		return true;

	FUNC1(skb);

	return true;
}
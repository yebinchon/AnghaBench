#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnt_rx_desc {struct vnt_rd_info* rd_info; } ;
struct vnt_rd_info {int /*<<< orphan*/  skb; int /*<<< orphan*/  skb_dma; } ;
struct vnt_private {int /*<<< orphan*/  rx_buf_sz; TYPE_1__* pcid; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vnt_private *priv,
			       struct vnt_rx_desc *rd)
{
	struct vnt_rd_info *rd_info = rd->rd_info;

	FUNC1(&priv->pcid->dev, rd_info->skb_dma,
			 priv->rx_buf_sz, DMA_FROM_DEVICE);
	FUNC0(rd_info->skb);
}
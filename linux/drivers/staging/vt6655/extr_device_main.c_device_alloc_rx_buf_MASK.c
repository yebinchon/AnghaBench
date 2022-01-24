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
struct TYPE_6__ {void* req_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; void* res_count; } ;
struct vnt_rx_desc {int /*<<< orphan*/  buff_addr; TYPE_3__ rd1; TYPE_2__ rd0; struct vnt_rd_info* rd_info; } ;
struct vnt_rd_info {int /*<<< orphan*/  skb_dma; int /*<<< orphan*/ * skb; } ;
struct vnt_private {scalar_t__ rx_buf_sz; TYPE_1__* pcid; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  OWNED_BY_NIC ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(struct vnt_private *priv,
				struct vnt_rx_desc *rd)
{
	struct vnt_rd_info *rd_info = rd->rd_info;

	rd_info->skb = FUNC2((int)priv->rx_buf_sz);
	if (!rd_info->skb)
		return false;

	rd_info->skb_dma =
		FUNC4(&priv->pcid->dev,
			       FUNC6(rd_info->skb, FUNC7(rd_info->skb)),
			       priv->rx_buf_sz, DMA_FROM_DEVICE);
	if (FUNC5(&priv->pcid->dev, rd_info->skb_dma)) {
		FUNC3(rd_info->skb);
		rd_info->skb = NULL;
		return false;
	}

	*((unsigned int *)&rd->rd0) = 0; /* FIX cast */

	rd->rd0.res_count = FUNC0(priv->rx_buf_sz);
	rd->rd0.owner = OWNED_BY_NIC;
	rd->rd1.req_count = FUNC0(priv->rx_buf_sz);
	rd->buff_addr = FUNC1(rd_info->skb_dma);

	return true;
}
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
struct TYPE_5__ {void* owner; void* res_count; } ;
struct vnt_rx_desc {TYPE_3__ rd1; TYPE_2__ rd0; } ;
struct TYPE_4__ {unsigned int rx_descs0; unsigned int rx_descs1; } ;
struct vnt_private {int /*<<< orphan*/  rd1_pool_dma; int /*<<< orphan*/  rd0_pool_dma; int /*<<< orphan*/  PortOffset; int /*<<< orphan*/  rx_buf_sz; struct vnt_rx_desc* aRD1Ring; TYPE_1__ opts; struct vnt_rx_desc* aRD0Ring; struct vnt_rx_desc** pCurrRD; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 void* OWNED_BY_NIC ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct vnt_private *priv)
{
	unsigned int uu;
	struct vnt_rx_desc *pDesc;

	/* initialize RD index */
	priv->pCurrRD[0] = &priv->aRD0Ring[0];
	priv->pCurrRD[1] = &priv->aRD1Ring[0];

	/* init state, all RD is chip's */
	for (uu = 0; uu < priv->opts.rx_descs0; uu++) {
		pDesc = &priv->aRD0Ring[uu];
		pDesc->rd0.res_count = FUNC4(priv->rx_buf_sz);
		pDesc->rd0.owner = OWNED_BY_NIC;
		pDesc->rd1.req_count = FUNC4(priv->rx_buf_sz);
	}

	/* init state, all RD is chip's */
	for (uu = 0; uu < priv->opts.rx_descs1; uu++) {
		pDesc = &priv->aRD1Ring[uu];
		pDesc->rd0.res_count = FUNC4(priv->rx_buf_sz);
		pDesc->rd0.owner = OWNED_BY_NIC;
		pDesc->rd1.req_count = FUNC4(priv->rx_buf_sz);
	}

	/* set perPkt mode */
	FUNC0(priv->PortOffset);
	FUNC1(priv->PortOffset);
	/* set MAC RD pointer */
	FUNC2(priv, priv->rd0_pool_dma);

	FUNC3(priv, priv->rd1_pool_dma);
}
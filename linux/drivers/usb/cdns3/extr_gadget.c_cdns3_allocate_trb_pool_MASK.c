#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cdns3_trb {int control; int /*<<< orphan*/  buffer; } ;
struct cdns3_endpoint {int num_trbs; int /*<<< orphan*/  trb_pool_dma; struct cdns3_trb* trb_pool; int /*<<< orphan*/  num; struct cdns3_device* cdns3_dev; } ;
struct cdns3_device {int /*<<< orphan*/  sysdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA32 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TRB_CYCLE ; 
 int /*<<< orphan*/  TRB_LINK ; 
 int TRB_SIZE ; 
 int TRB_TOGGLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cdns3_endpoint*) ; 
 struct cdns3_trb* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cdns3_trb*,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct cdns3_endpoint *priv_ep)
{
	struct cdns3_device *priv_dev = priv_ep->cdns3_dev;
	int ring_size = FUNC2(priv_ep);
	struct cdns3_trb *link_trb;

	if (!priv_ep->trb_pool) {
		priv_ep->trb_pool = FUNC3(priv_dev->sysdev,
						       ring_size,
						       &priv_ep->trb_pool_dma,
						       GFP_DMA32 | GFP_ATOMIC);
		if (!priv_ep->trb_pool)
			return -ENOMEM;
	} else {
		FUNC4(priv_ep->trb_pool, 0, ring_size);
	}

	if (!priv_ep->num)
		return 0;

	priv_ep->num_trbs = ring_size / TRB_SIZE;
	/* Initialize the last TRB as Link TRB. */
	link_trb = (priv_ep->trb_pool + (priv_ep->num_trbs - 1));
	link_trb->buffer = FUNC0(priv_ep->trb_pool_dma);
	link_trb->control = TRB_CYCLE | FUNC1(TRB_LINK) | TRB_TOGGLE;

	return 0;
}
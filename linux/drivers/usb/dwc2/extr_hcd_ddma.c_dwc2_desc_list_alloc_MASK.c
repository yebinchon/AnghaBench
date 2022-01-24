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
typedef  int /*<<< orphan*/  u32 ;
struct kmem_cache {int dummy; } ;
struct dwc2_qh {scalar_t__ ep_type; scalar_t__ dev_speed; int desc_list_sz; int /*<<< orphan*/ * desc_list; int /*<<< orphan*/  desc_list_dma; int /*<<< orphan*/  n_bytes; } ;
struct dwc2_hsotg {int /*<<< orphan*/  dev; struct kmem_cache* desc_gen_cache; struct kmem_cache* desc_hsisoc_cache; } ;
struct dwc2_dma_desc {int dummy; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 scalar_t__ USB_ENDPOINT_XFER_ISOC ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dwc2_qh*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct kmem_cache*,int) ; 

__attribute__((used)) static int FUNC6(struct dwc2_hsotg *hsotg, struct dwc2_qh *qh,
				gfp_t flags)
{
	struct kmem_cache *desc_cache;

	if (qh->ep_type == USB_ENDPOINT_XFER_ISOC &&
	    qh->dev_speed == USB_SPEED_HIGH)
		desc_cache = hsotg->desc_hsisoc_cache;
	else
		desc_cache = hsotg->desc_gen_cache;

	qh->desc_list_sz = sizeof(struct dwc2_dma_desc) *
						FUNC2(qh);

	qh->desc_list = FUNC5(desc_cache, flags | GFP_DMA);
	if (!qh->desc_list)
		return -ENOMEM;

	qh->desc_list_dma = FUNC0(hsotg->dev, qh->desc_list,
					   qh->desc_list_sz,
					   DMA_TO_DEVICE);

	qh->n_bytes = FUNC3(FUNC2(qh), sizeof(u32), flags);
	if (!qh->n_bytes) {
		FUNC1(hsotg->dev, qh->desc_list_dma,
				 qh->desc_list_sz,
				 DMA_FROM_DEVICE);
		FUNC4(desc_cache, qh->desc_list);
		qh->desc_list = NULL;
		return -ENOMEM;
	}

	return 0;
}
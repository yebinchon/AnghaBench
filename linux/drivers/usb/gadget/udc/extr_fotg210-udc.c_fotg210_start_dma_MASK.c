#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_8__ {int length; int actual; int /*<<< orphan*/ * buf; } ;
struct fotg210_request {TYPE_4__ req; } ;
struct TYPE_7__ {int maxpacket; } ;
struct fotg210_ep {scalar_t__ dir_in; TYPE_3__ ep; scalar_t__ epnum; TYPE_2__* fotg210; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {struct device dev; } ;
struct TYPE_6__ {scalar_t__ reg; TYPE_1__ gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int FIBCR_BCFX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fotg210_ep*) ; 
 int /*<<< orphan*/  FUNC5 (struct fotg210_ep*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fotg210_ep*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(struct fotg210_ep *ep,
			struct fotg210_request *req)
{
	struct device *dev = &ep->fotg210->gadget.dev;
	dma_addr_t d;
	u8 *buffer;
	u32 length;

	if (ep->epnum) {
		if (ep->dir_in) {
			buffer = req->req.buf;
			length = req->req.length;
		} else {
			buffer = req->req.buf + req->req.actual;
			length = FUNC7(ep->fotg210->reg +
					FUNC0(ep->epnum - 1));
			length &= FIBCR_BCFX;
		}
	} else {
		buffer = req->req.buf + req->req.actual;
		if (req->req.length - req->req.actual > ep->ep.maxpacket)
			length = ep->ep.maxpacket;
		else
			length = req->req.length;
	}

	d = FUNC1(dev, buffer, length,
			ep->dir_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);

	if (FUNC2(dev, d)) {
		FUNC8("dma_mapping_error\n");
		return;
	}

	FUNC5(ep, d, length);

	/* check if dma is done */
	FUNC6(ep);

	FUNC4(ep);

	/* update actual transfer length */
	req->req.actual += length;

	FUNC3(dev, d, length, DMA_TO_DEVICE);
}
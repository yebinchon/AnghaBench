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
typedef  int u32 ;
struct xhci_hcd {struct xhci_dbc* dbc; } ;
struct xhci_ep_ctx {void* deq; void* ep_info2; scalar_t__ ep_info; } ;
struct xhci_dbc {int string_dma; TYPE_4__* regs; TYPE_3__* ctx; TYPE_2__* ring_in; TYPE_1__* ring_out; } ;
struct dbc_info_context {void* length; void* serial; void* product; void* manufacturer; void* string0; } ;
typedef  int dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  devinfo2; int /*<<< orphan*/  devinfo1; int /*<<< orphan*/  dccp; int /*<<< orphan*/  control; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma; scalar_t__ bytes; } ;
struct TYPE_6__ {int cycle_state; } ;
struct TYPE_5__ {int cycle_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_IN_EP ; 
 int /*<<< orphan*/  BULK_OUT_EP ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int DBC_DEVICE_REV ; 
 int DBC_MAX_STRING_LENGTH ; 
 int DBC_PRODUCT_ID ; 
 int DBC_PROTOCOL ; 
 int DBC_VENDOR_ID ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 struct xhci_ep_ctx* FUNC3 (struct xhci_dbc*) ; 
 int FUNC4 (struct xhci_dbc*) ; 
 struct xhci_ep_ctx* FUNC5 (struct xhci_dbc*) ; 
 int FUNC6 (struct xhci_dbc*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct xhci_hcd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct xhci_hcd *xhci, u32 string_length)
{
	struct xhci_dbc		*dbc;
	struct dbc_info_context	*info;
	struct xhci_ep_ctx	*ep_ctx;
	u32			dev_info;
	dma_addr_t		deq, dma;
	unsigned int		max_burst;

	dbc = xhci->dbc;
	if (!dbc)
		return;

	/* Populate info Context: */
	info			= (struct dbc_info_context *)dbc->ctx->bytes;
	dma			= dbc->string_dma;
	info->string0		= FUNC2(dma);
	info->manufacturer	= FUNC2(dma + DBC_MAX_STRING_LENGTH);
	info->product		= FUNC2(dma + DBC_MAX_STRING_LENGTH * 2);
	info->serial		= FUNC2(dma + DBC_MAX_STRING_LENGTH * 3);
	info->length		= FUNC1(string_length);

	/* Populate bulk out endpoint context: */
	ep_ctx			= FUNC5(dbc);
	max_burst		= FUNC0(FUNC8(&dbc->regs->control));
	deq			= FUNC6(dbc);
	ep_ctx->ep_info		= 0;
	ep_ctx->ep_info2	= FUNC7(BULK_OUT_EP, 1024, max_burst);
	ep_ctx->deq		= FUNC2(deq | dbc->ring_out->cycle_state);

	/* Populate bulk in endpoint context: */
	ep_ctx			= FUNC3(dbc);
	deq			= FUNC4(dbc);
	ep_ctx->ep_info		= 0;
	ep_ctx->ep_info2	= FUNC7(BULK_IN_EP, 1024, max_burst);
	ep_ctx->deq		= FUNC2(deq | dbc->ring_in->cycle_state);

	/* Set DbC context and info registers: */
	FUNC10(xhci, dbc->ctx->dma, &dbc->regs->dccp);

	dev_info = FUNC1((DBC_VENDOR_ID << 16) | DBC_PROTOCOL);
	FUNC9(dev_info, &dbc->regs->devinfo1);

	dev_info = FUNC1((DBC_DEVICE_REV << 16) | DBC_PRODUCT_ID);
	FUNC9(dev_info, &dbc->regs->devinfo2);
}
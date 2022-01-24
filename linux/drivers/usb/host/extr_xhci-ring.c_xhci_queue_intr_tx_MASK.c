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
struct xhci_hcd {TYPE_1__** devs; } ;
struct xhci_ep_ctx {int dummy; } ;
struct urb {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  out_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,struct urb*,struct xhci_ep_ctx*) ; 
 struct xhci_ep_ctx* FUNC1 (struct xhci_hcd*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC2 (struct xhci_hcd*,int /*<<< orphan*/ ,struct urb*,int,unsigned int) ; 

int FUNC3(struct xhci_hcd *xhci, gfp_t mem_flags,
		struct urb *urb, int slot_id, unsigned int ep_index)
{
	struct xhci_ep_ctx *ep_ctx;

	ep_ctx = FUNC1(xhci, xhci->devs[slot_id]->out_ctx, ep_index);
	FUNC0(xhci, urb, ep_ctx);

	return FUNC2(xhci, mem_flags, urb, slot_id, ep_index);
}
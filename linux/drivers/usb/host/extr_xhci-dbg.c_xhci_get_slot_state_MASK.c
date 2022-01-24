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
struct xhci_slot_ctx {int /*<<< orphan*/  dev_state; } ;
struct xhci_hcd {int dummy; } ;
struct xhci_container_ctx {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct xhci_slot_ctx* FUNC2 (struct xhci_hcd*,struct xhci_container_ctx*) ; 
 char* FUNC3 (int) ; 

char *FUNC4(struct xhci_hcd *xhci,
		struct xhci_container_ctx *ctx)
{
	struct xhci_slot_ctx *slot_ctx = FUNC2(xhci, ctx);
	int state = FUNC0(FUNC1(slot_ctx->dev_state));

	return FUNC3(state);
}
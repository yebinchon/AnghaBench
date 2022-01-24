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
struct xhci_hcd {int dummy; } ;
struct xhci_command {int dummy; } ;
typedef  enum xhci_setup_dev { ____Placeholder_xhci_setup_dev } xhci_setup_dev ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int SETUP_CONTEXT_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRB_ADDR_DEV ; 
 int TRB_BSR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct xhci_hcd*,struct xhci_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct xhci_hcd *xhci, struct xhci_command *cmd,
		dma_addr_t in_ctx_ptr, u32 slot_id, enum xhci_setup_dev setup)
{
	return FUNC3(xhci, cmd, FUNC2(in_ctx_ptr),
			FUNC4(in_ctx_ptr), 0,
			FUNC1(TRB_ADDR_DEV) | FUNC0(slot_id)
			| (setup == SETUP_CONTEXT_ONLY ? TRB_BSR : 0), false);
}
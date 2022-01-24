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
typedef  int u32 ;
struct xhci_input_control_ctx {int /*<<< orphan*/  drop_flags; int /*<<< orphan*/  add_flags; } ;
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct xhci_hcd *xhci,
		struct xhci_input_control_ctx *ctrl_ctx)
{
	u32 valid_add_flags;
	u32 valid_drop_flags;

	valid_add_flags = FUNC1(ctrl_ctx->add_flags) >> 2;
	valid_drop_flags = FUNC1(ctrl_ctx->drop_flags) >> 2;

	return FUNC0(valid_drop_flags) -
		FUNC0(valid_add_flags & valid_drop_flags);
}
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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRB_RESET_DEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct xhci_hcd*,struct xhci_command*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC3(struct xhci_hcd *xhci, struct xhci_command *cmd,
		u32 slot_id)
{
	return FUNC2(xhci, cmd, 0, 0, 0,
			FUNC1(TRB_RESET_DEV) | FUNC0(slot_id),
			false);
}
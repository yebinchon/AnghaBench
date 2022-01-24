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
struct xhci_regset {int /*<<< orphan*/  list; } ;
struct xhci_hcd {int /*<<< orphan*/  regset_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct xhci_regset* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct xhci_regset *FUNC3(struct xhci_hcd *xhci)
{
	struct xhci_regset	*regset;

	regset = FUNC1(sizeof(*regset), GFP_KERNEL);
	if (!regset)
		return NULL;

	/*
	 * The allocation and free of regset are executed in order.
	 * We needn't a lock here.
	 */
	FUNC0(&regset->list);
	FUNC2(&regset->list, &xhci->regset_list);

	return regset;
}
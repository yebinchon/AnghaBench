#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xhci_hcd {int /*<<< orphan*/  dbc; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_dbc ; 
 int /*<<< orphan*/  FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*) ; 
 TYPE_2__* FUNC4 (struct xhci_hcd*) ; 

void FUNC5(struct xhci_hcd *xhci)
{
	struct device		*dev = FUNC4(xhci)->self.controller;

	if (!xhci->dbc)
		return;

	FUNC0(dev, &dev_attr_dbc);
	FUNC2();
	FUNC1(xhci);
	FUNC3(xhci);
}
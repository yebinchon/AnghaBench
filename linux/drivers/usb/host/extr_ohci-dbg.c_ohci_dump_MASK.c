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
struct ohci_hcd {scalar_t__ hcca; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ohci_hcd*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ohci_hcd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ohci_hcd*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ohci_hcd*) ; 

__attribute__((used)) static void FUNC4(struct ohci_hcd *controller)
{
	FUNC0 (controller, "OHCI controller state\n");

	// dumps some of the state we know about
	FUNC2 (controller, NULL, NULL);
	if (controller->hcca)
		FUNC0 (controller,
			"hcca frame #%04x\n", FUNC3(controller));
	FUNC1 (controller, 1, NULL, NULL);
}
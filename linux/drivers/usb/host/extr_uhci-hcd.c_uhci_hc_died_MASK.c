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
struct uhci_hcd {int dead; int /*<<< orphan*/  frame_number; int /*<<< orphan*/  (* reset_hc ) (struct uhci_hcd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct uhci_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (struct uhci_hcd*) ; 

__attribute__((used)) static void FUNC3(struct uhci_hcd *uhci)
{
	FUNC2(uhci);
	uhci->reset_hc(uhci);
	FUNC0(uhci);
	uhci->dead = 1;

	/* The current frame may already be partway finished */
	++uhci->frame_number;
}
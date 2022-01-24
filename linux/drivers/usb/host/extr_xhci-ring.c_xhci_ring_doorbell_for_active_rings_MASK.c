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
struct xhci_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xhci_hcd*,unsigned int,unsigned int) ; 

void FUNC1(struct xhci_hcd *xhci,
		unsigned int slot_id,
		unsigned int ep_index)
{
	FUNC0(xhci, slot_id, ep_index);
}
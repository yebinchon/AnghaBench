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
struct urb {scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int transfer_flags; int /*<<< orphan*/  status; } ;
struct fhci_hcd {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  EREMOTEIO ; 
 int URB_SHORT_NOT_OK ; 
 int /*<<< orphan*/  FUNC0 (struct fhci_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct fhci_hcd*,struct urb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct urb*) ; 

void FUNC6(struct fhci_hcd *fhci, struct urb *urb)
{
	FUNC1(fhci, urb);

	if (urb->status == -EINPROGRESS) {
		if (urb->actual_length != urb->transfer_buffer_length &&
				urb->transfer_flags & URB_SHORT_NOT_OK)
			urb->status = -EREMOTEIO;
		else
			urb->status = 0;
	}

	FUNC5(FUNC0(fhci), urb);

	FUNC3(&fhci->lock);

	FUNC4(FUNC0(fhci), urb, urb->status);

	FUNC2(&fhci->lock);
}
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
struct wa_xfer {TYPE_2__* wa; int /*<<< orphan*/  result; int /*<<< orphan*/  urb; int /*<<< orphan*/  list_node; } ;
struct TYPE_4__ {TYPE_1__* wusb; int /*<<< orphan*/  xfer_list_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_hcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct wa_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct wa_xfer *xfer)
{
	unsigned long flags;

	FUNC1(&xfer->wa->xfer_list_lock, flags);
	FUNC0(&xfer->list_node);
	FUNC3(&(xfer->wa->wusb->usb_hcd), xfer->urb);
	FUNC2(&xfer->wa->xfer_list_lock, flags);
	/* FIXME: segmentation broken -- kills DWA */
	FUNC6(xfer->wa->wusb, xfer->urb, xfer->result);
	FUNC4(xfer->wa);
	FUNC5(xfer);
}
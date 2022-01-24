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
struct zd_usb_rx {unsigned int urbs_count; int /*<<< orphan*/  lock; struct urb** urbs; } ;
struct zd_usb {struct zd_usb_rx rx; } ;
struct urb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (struct urb**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 

__attribute__((used)) static void FUNC5(struct zd_usb *usb)
{
	int i;
	unsigned long flags;
	struct urb **urbs;
	unsigned int count;
	struct zd_usb_rx *rx = &usb->rx;

	FUNC2(&rx->lock, flags);
	urbs = rx->urbs;
	count = rx->urbs_count;
	FUNC3(&rx->lock, flags);
	if (!urbs)
		return;

	for (i = 0; i < count; i++) {
		FUNC4(urbs[i]);
		FUNC0(urbs[i]);
	}
	FUNC1(urbs);

	FUNC2(&rx->lock, flags);
	rx->urbs = NULL;
	rx->urbs_count = 0;
	FUNC3(&rx->lock, flags);
}
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
struct zd_usb_tx {int /*<<< orphan*/  lock; scalar_t__ stopped; scalar_t__ submitted_urbs; int /*<<< orphan*/  enabled; } ;
struct zd_usb {struct zd_usb_tx tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_usb*) ; 

void FUNC5(struct zd_usb *usb)
{
	unsigned long flags;
	struct zd_usb_tx *tx = &usb->tx;

	FUNC2(&tx->lock, flags);
	FUNC0(&tx->enabled, 1);
	tx->submitted_urbs = 0;
	FUNC1(FUNC4(usb));
	tx->stopped = 0;
	FUNC3(&tx->lock, flags);
}
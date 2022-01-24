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
struct zd_usb_tx {int /*<<< orphan*/  watchdog_work; scalar_t__ watchdog_enabled; } ;
struct zd_usb {struct zd_usb_tx tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct zd_usb*) ; 

void FUNC3(struct zd_usb *usb)
{
	struct zd_usb_tx *tx = &usb->tx;

	if (tx->watchdog_enabled) {
		FUNC1(FUNC2(usb), "\n");
		tx->watchdog_enabled = 0;
		FUNC0(&tx->watchdog_work);
	}
}
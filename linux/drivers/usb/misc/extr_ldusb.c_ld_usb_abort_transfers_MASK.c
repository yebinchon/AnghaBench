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
struct ld_usb {int /*<<< orphan*/  interrupt_out_urb; scalar_t__ interrupt_out_busy; int /*<<< orphan*/  interrupt_in_urb; scalar_t__ interrupt_in_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ld_usb *dev)
{
	/* shutdown transfer */
	if (dev->interrupt_in_running) {
		dev->interrupt_in_running = 0;
		FUNC0(dev->interrupt_in_urb);
	}
	if (dev->interrupt_out_busy)
		FUNC0(dev->interrupt_out_urb);
}
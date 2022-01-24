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
struct usbip_device {unsigned long event; int /*<<< orphan*/  eh_waitq; } ;

/* Variables and functions */
 unsigned long USBIP_EH_BYE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

void FUNC2(struct usbip_device *ud)
{
	unsigned long pending = ud->event & ~USBIP_EH_BYE;

	if (!(ud->event & USBIP_EH_BYE))
		FUNC0("usbip_eh stopping but not removed\n");

	if (pending)
		FUNC0("usbip_eh waiting completion %lx\n", pending);

	FUNC1(ud->eh_waitq, !(ud->event & ~USBIP_EH_BYE));
	FUNC0("usbip_eh has stopped\n");
}
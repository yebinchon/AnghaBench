#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_bus {int monitored; } ;
struct TYPE_2__ {scalar_t__ nreaders; } ;

/* Variables and functions */
 TYPE_1__ mon_bus0 ; 
 int /*<<< orphan*/  FUNC0 (struct usb_bus*) ; 
 int /*<<< orphan*/  mon_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_bus *ubus)
{
	FUNC0(ubus);
	FUNC1(&mon_lock);
	if (mon_bus0.nreaders != 0)
		ubus->monitored = 1;
	FUNC2(&mon_lock);
}
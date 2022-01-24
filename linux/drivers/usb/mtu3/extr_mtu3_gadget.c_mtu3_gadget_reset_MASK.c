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
struct TYPE_2__ {scalar_t__ speed; } ;
struct mtu3 {TYPE_1__ g; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ USB_SPEED_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtu3*) ; 

void FUNC3(struct mtu3 *mtu)
{
	FUNC0(mtu->dev, "gadget RESET\n");

	/* report disconnect, if we didn't flush EP state */
	if (mtu->g.speed != USB_SPEED_UNKNOWN)
		FUNC1(mtu);
	else
		FUNC2(mtu);
}
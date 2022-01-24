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
struct mtu3 {scalar_t__ max_speed; int /*<<< orphan*/  dev; scalar_t__ is_u3_ip; } ;

/* Variables and functions */
 scalar_t__ USB_SPEED_SUPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtu3*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtu3*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct mtu3 *mtu, int is_on)
{
	if (mtu->is_u3_ip && mtu->max_speed >= USB_SPEED_SUPER)
		FUNC2(mtu, is_on);
	else
		FUNC1(mtu, is_on);

	FUNC0(mtu->dev, "gadget (%s) pullup D%s\n",
		FUNC3(mtu->max_speed), is_on ? "+" : "-");
}
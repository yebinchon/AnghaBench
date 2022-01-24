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
struct usb3503 {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  gpio_connect; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct usb3503 *hub, int state)
{
	if (!state && FUNC0(hub->gpio_connect))
		FUNC1(hub->gpio_connect, 0);

	if (FUNC0(hub->gpio_reset))
		FUNC1(hub->gpio_reset, state);

	/* Wait T_HUBINIT == 4ms for hub logic to stabilize */
	if (state)
		FUNC2(4000, 10000);

	return 0;
}
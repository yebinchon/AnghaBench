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
struct timer_list {int dummy; } ;
struct at91_udc {int /*<<< orphan*/  vbus_timer_work; } ;

/* Variables and functions */
 struct at91_udc* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct at91_udc* udc ; 
 int /*<<< orphan*/  vbus_timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct at91_udc *udc = FUNC0(udc, t, vbus_timer);

	/*
	 * If we are polling vbus it is likely that the gpio is on an
	 * bus such as i2c or spi which may sleep, so schedule some work
	 * to read the vbus gpio
	 */
	FUNC1(&udc->vbus_timer_work);
}
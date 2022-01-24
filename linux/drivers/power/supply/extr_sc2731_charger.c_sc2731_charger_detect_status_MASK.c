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
struct sc2731_charger_info {unsigned int limit; int /*<<< orphan*/  work; TYPE_1__* usb_phy; } ;
struct TYPE_2__ {scalar_t__ chg_state; } ;

/* Variables and functions */
 scalar_t__ USB_CHARGER_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC2(struct sc2731_charger_info *info)
{
	unsigned int min, max;

	/*
	 * If the USB charger status has been USB_CHARGER_PRESENT before
	 * registering the notifier, we should start to charge with getting
	 * the charge current.
	 */
	if (info->usb_phy->chg_state != USB_CHARGER_PRESENT)
		return;

	FUNC1(info->usb_phy, &min, &max);
	info->limit = min;

	FUNC0(&info->work);
}
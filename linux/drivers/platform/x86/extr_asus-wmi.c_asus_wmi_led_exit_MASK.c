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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct asus_wmi {scalar_t__ led_workqueue; TYPE_1__ lightbar_led; TYPE_1__ wlan_led; TYPE_1__ tpd_led; TYPE_1__ kbd_led; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct asus_wmi *asus)
{
	if (!FUNC0(asus->kbd_led.dev))
		FUNC2(&asus->kbd_led);
	if (!FUNC0(asus->tpd_led.dev))
		FUNC2(&asus->tpd_led);
	if (!FUNC0(asus->wlan_led.dev))
		FUNC2(&asus->wlan_led);
	if (!FUNC0(asus->lightbar_led.dev))
		FUNC2(&asus->lightbar_led);
	if (asus->led_workqueue)
		FUNC1(asus->led_workqueue);
}
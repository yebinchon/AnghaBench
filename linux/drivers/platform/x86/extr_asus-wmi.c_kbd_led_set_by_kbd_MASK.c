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
struct led_classdev {int dummy; } ;
struct asus_wmi {int /*<<< orphan*/  kbd_led_wk; struct led_classdev kbd_led; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct led_classdev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct asus_wmi *asus, enum led_brightness value)
{
	struct led_classdev *led_cdev = &asus->kbd_led;

	FUNC0(led_cdev, value);
	FUNC1(led_cdev, asus->kbd_led_wk);
}
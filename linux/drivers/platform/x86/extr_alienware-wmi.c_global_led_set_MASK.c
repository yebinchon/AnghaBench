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
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 scalar_t__ WMAX ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int global_brightness ; 
 scalar_t__ interface ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/ * zone_data ; 

__attribute__((used)) static void FUNC3(struct led_classdev *led_cdev,
			   enum led_brightness brightness)
{
	int ret;
	global_brightness = brightness;
	if (interface == WMAX)
		ret = FUNC2(brightness);
	else
		ret = FUNC0(&zone_data[0]);
	if (ret)
		FUNC1("LED brightness update failed\n");
}
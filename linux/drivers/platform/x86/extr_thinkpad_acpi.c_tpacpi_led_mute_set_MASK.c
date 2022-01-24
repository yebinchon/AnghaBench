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
 int /*<<< orphan*/  LED_AUDIO_MUTE ; 
 int LED_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct led_classdev *led_cdev,
			       enum led_brightness brightness)
{
	return FUNC0(LED_AUDIO_MUTE, brightness != LED_OFF);
}
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

/* Variables and functions */
 scalar_t__ LED_HASLCD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ lcd_no_led_support ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lcd_text_default ; 
 int /*<<< orphan*/  led_task ; 
 scalar_t__ led_type ; 
 int /*<<< orphan*/  led_wq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void) 
{	
	/* Display the default text now */
	if (led_type == LED_HASLCD) FUNC1( lcd_text_default );

	/* KittyHawk has no LED support on its LCD */
	if (lcd_no_led_support) return 0;

	/* Create the work queue and queue the LED task */
	led_wq = FUNC0("led_wq");	
	FUNC2(led_wq, &led_task, 0);

	return 0;
}
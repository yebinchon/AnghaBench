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
struct kbd_struct {int /*<<< orphan*/  ledmode; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_SHOW_FLAGS ; 
 int /*<<< orphan*/  LED_SHOW_IOCTL ; 
 int /*<<< orphan*/  led_lock ; 
 unsigned int ledioctl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct kbd_struct *kb, unsigned int led)
{
        unsigned long flags;
        FUNC1(&led_lock, flags);
	if (!(led & ~7)) {
		ledioctl = led;
		kb->ledmode = LED_SHOW_IOCTL;
	} else
		kb->ledmode = LED_SHOW_FLAGS;

	FUNC0();
	FUNC2(&led_lock, flags);
}
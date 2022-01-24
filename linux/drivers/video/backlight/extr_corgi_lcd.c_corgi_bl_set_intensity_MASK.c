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
struct corgi_lcd {int gpio_backlight_cont_inverted; int intensity; int /*<<< orphan*/  (* kick_battery ) () ;int /*<<< orphan*/  gpio_backlight_on; int /*<<< orphan*/  gpio_backlight_cont; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUTYCTRL_ADRS ; 
 int /*<<< orphan*/  FUNC0 (struct corgi_lcd*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct corgi_lcd *lcd, int intensity)
{
	int cont;

	if (intensity > 0x10)
		intensity += 0x10;

	FUNC0(lcd, DUTYCTRL_ADRS, intensity);

	/* Bit 5 via GPIO_BACKLIGHT_CONT */
	cont = !!(intensity & 0x20) ^ lcd->gpio_backlight_cont_inverted;

	if (FUNC1(lcd->gpio_backlight_cont))
		FUNC2(lcd->gpio_backlight_cont, cont);

	if (FUNC1(lcd->gpio_backlight_on))
		FUNC2(lcd->gpio_backlight_on, intensity);

	if (lcd->kick_battery)
		lcd->kick_battery();

	lcd->intensity = intensity;
	return 0;
}
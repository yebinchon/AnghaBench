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
struct rtsx_chip {scalar_t__ idle_counter; int /*<<< orphan*/  sd_io; int /*<<< orphan*/  card_ready; scalar_t__ auto_power_down; scalar_t__ led_toggle_counter; } ;

/* Variables and functions */
 scalar_t__ IDLE_MAX_COUNT ; 
 int /*<<< orphan*/  LED_GPIO ; 
 int OC_PDCTL ; 
 scalar_t__ RTSX_STAT_IDLE ; 
 int SSC_PDCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rtsx_chip *chip)
{
	if (chip->idle_counter < IDLE_MAX_COUNT) {
		chip->idle_counter++;
		return;
	}

	if (FUNC4(chip) == RTSX_STAT_IDLE)
		return;

	FUNC0(FUNC1(chip), "Idle state!\n");
	FUNC5(chip, RTSX_STAT_IDLE);

#if !defined(LED_AUTO_BLINK) && defined(REGULAR_BLINK)
	chip->led_toggle_counter = 0;
#endif
	FUNC3(chip, SSC_PDCTL);

	FUNC6(chip, LED_GPIO);

	if (chip->auto_power_down && !chip->card_ready && !chip->sd_io)
		FUNC2(chip, SSC_PDCTL | OC_PDCTL);
}
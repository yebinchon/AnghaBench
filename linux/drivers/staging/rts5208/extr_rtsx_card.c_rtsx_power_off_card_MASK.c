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
struct rtsx_chip {int card_ready; scalar_t__ sd_io; } ;

/* Variables and functions */
 int MS_CARD ; 
 int SD_CARD ; 
 int XD_CARD ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 

void FUNC6(struct rtsx_chip *chip)
{
	if ((chip->card_ready & SD_CARD) || chip->sd_io) {
		FUNC2(chip);
		FUNC3(chip);
	}

	if (chip->card_ready & XD_CARD) {
		FUNC4(chip);
		FUNC5(chip);
	}

	if (chip->card_ready & MS_CARD) {
		FUNC0(chip);
		FUNC1(chip);
	}
}
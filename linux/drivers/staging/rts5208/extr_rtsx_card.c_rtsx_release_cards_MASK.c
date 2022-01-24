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
struct rtsx_chip {int int_reg; int card_ready; scalar_t__ sd_io; } ;

/* Variables and functions */
 int MS_CARD ; 
 int MS_EXIST ; 
 int /*<<< orphan*/  RTSX_BIPR ; 
 int SD_CARD ; 
 int SD_EXIST ; 
 int XD_CARD ; 
 int XD_EXIST ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 

void FUNC7(struct rtsx_chip *chip)
{
	chip->int_reg = FUNC4(chip, RTSX_BIPR);

	if ((chip->card_ready & SD_CARD) || chip->sd_io) {
		if (chip->int_reg & SD_EXIST)
			FUNC5(chip);
		FUNC2(chip);
	}

	if (chip->card_ready & XD_CARD) {
		if (chip->int_reg & XD_EXIST)
			FUNC6(chip);
		FUNC3(chip);
	}

	if (chip->card_ready & MS_CARD) {
		if (chip->int_reg & MS_EXIST)
			FUNC0(chip);
		FUNC1(chip);
	}
}
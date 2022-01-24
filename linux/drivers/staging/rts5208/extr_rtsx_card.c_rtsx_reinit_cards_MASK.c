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
struct rtsx_chip {int int_reg; int need_reinit; int card_exist; } ;

/* Variables and functions */
 int MS_CARD ; 
 int MS_EXIST ; 
 int OC_PDCTL ; 
 int /*<<< orphan*/  RTSX_BIPR ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 int SD_CARD ; 
 int SD_EXIST ; 
 int SSC_PDCTL ; 
 int XD_CARD ; 
 int XD_EXIST ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int) ; 
 int FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(struct rtsx_chip *chip, int reset_chip)
{
	FUNC10(chip, RTSX_STAT_RUN);

	FUNC7(chip, SSC_PDCTL | OC_PDCTL);

	if (reset_chip)
		FUNC9(chip);

	chip->int_reg = FUNC8(chip, RTSX_BIPR);

	if ((chip->int_reg & SD_EXIST) && (chip->need_reinit & SD_CARD)) {
		FUNC5(chip);
		FUNC4(chip);

		FUNC11(100);

		chip->card_exist |= SD_CARD;
		FUNC1(chip);
	}

	if ((chip->int_reg & XD_EXIST) && (chip->need_reinit & XD_CARD)) {
		FUNC6(chip);

		FUNC11(100);

		chip->card_exist |= XD_CARD;
		FUNC2(chip);
	}

	if ((chip->int_reg & MS_EXIST) && (chip->need_reinit & MS_CARD)) {
		FUNC3(chip);

		FUNC11(100);

		chip->card_exist |= MS_CARD;
		FUNC0(chip);
	}

	chip->need_reinit = 0;
}
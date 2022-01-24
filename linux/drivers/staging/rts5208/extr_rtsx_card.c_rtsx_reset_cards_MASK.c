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
struct rtsx_chip {int need_reset; int card_exist; scalar_t__ xd_show_cnt; scalar_t__ sd_show_cnt; scalar_t__ ms_show_cnt; scalar_t__ chip_insert_with_sdio; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*,int) ; 
 scalar_t__ MAX_SHOW_CNT ; 
 int MS_CARD ; 
 int /*<<< orphan*/  MS_NR ; 
 int OC_PDCTL ; 
 int /*<<< orphan*/  QFN ; 
 int /*<<< orphan*/  RBCTL ; 
 int /*<<< orphan*/  RB_FLUSH ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 int SD_CARD ; 
 int /*<<< orphan*/  SD_NR ; 
 int SSC_PDCTL ; 
 int XD_CARD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct rtsx_chip *chip)
{
	if (!chip->need_reset)
		return;

	FUNC8(chip, RTSX_STAT_RUN);

	FUNC7(chip, SSC_PDCTL | OC_PDCTL);

	FUNC6(chip);

	if ((chip->need_reset & SD_CARD) && chip->chip_insert_with_sdio)
		FUNC2(SD_NR, &chip->need_reset);

	if (chip->need_reset & XD_CARD) {
		chip->card_exist |= XD_CARD;

		if (chip->xd_show_cnt >= MAX_SHOW_CNT)
			FUNC5(chip);
		else
			chip->xd_show_cnt++;
	}
	if (FUNC1(chip, 0x5288) && FUNC0(chip, QFN)) {
		if (chip->card_exist & XD_CARD) {
			FUNC2(SD_NR, &chip->need_reset);
			FUNC2(MS_NR, &chip->need_reset);
		}
	}
	if (chip->need_reset & SD_CARD) {
		chip->card_exist |= SD_CARD;

		if (chip->sd_show_cnt >= MAX_SHOW_CNT) {
			FUNC9(chip, RBCTL, RB_FLUSH, RB_FLUSH);
			FUNC4(chip);
		} else {
			chip->sd_show_cnt++;
		}
	}
	if (chip->need_reset & MS_CARD) {
		chip->card_exist |= MS_CARD;

		if (chip->ms_show_cnt >= MAX_SHOW_CNT)
			FUNC3(chip);
		else
			chip->ms_show_cnt++;
	}
}
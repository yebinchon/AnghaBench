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
struct rtsx_chip {int need_release; int int_reg; int card_exist; int ocp_stat; int card_ejected; int card_fail; size_t* card2lun; scalar_t__ need_reinit; scalar_t__ need_reset; scalar_t__* rw_fail_cnt; int /*<<< orphan*/  lun_mc; int /*<<< orphan*/  sd_io; } ;

/* Variables and functions */
 int CARD_OC_CLR ; 
 int CARD_OC_EVER ; 
 int CARD_OC_INT_CLR ; 
 int CARD_OC_NOW ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  HOST_SLEEP_STATE ; 
 int /*<<< orphan*/  LED_GPIO ; 
 int MS_CARD ; 
 int /*<<< orphan*/  MS_NR ; 
 int /*<<< orphan*/  OCPCLR ; 
 int OC_PDCTL ; 
 int /*<<< orphan*/  QFN ; 
 int /*<<< orphan*/  RBCTL ; 
 int RB_FLUSH ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 scalar_t__ FUNC4 (struct rtsx_chip*) ; 
 int SD_CARD ; 
 int /*<<< orphan*/  SD_NR ; 
 int SSC_PDCTL ; 
 int XD_CARD ; 
 int XD_EXIST ; 
 int /*<<< orphan*/  XD_NR ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC10 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtsx_chip*,int) ; 
 scalar_t__ FUNC14 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC17 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

void FUNC21(struct rtsx_chip *chip)
{
	if (FUNC4(chip) && (FUNC14(chip) != RTSX_STAT_SS)) {
		FUNC7(FUNC12(chip), "Reset chip in polling thread!\n");
		FUNC17(chip);
		FUNC3(chip);
	}

#ifdef DISABLE_CARD_INT
	card_cd_debounce(chip, &chip->need_reset, &chip->need_release);
#endif

	if (chip->need_release) {
		if (FUNC1(chip, 0x5288) && FUNC0(chip, QFN)) {
			if (chip->int_reg & XD_EXIST) {
				FUNC6(SD_NR, &chip->need_release);
				FUNC6(MS_NR, &chip->need_release);
			}
		}

		if (!(chip->card_exist & SD_CARD) && !chip->sd_io)
			FUNC6(SD_NR, &chip->need_release);
		if (!(chip->card_exist & XD_CARD))
			FUNC6(XD_NR, &chip->need_release);
		if (!(chip->card_exist & MS_CARD))
			FUNC6(MS_NR, &chip->need_release);

		FUNC7(FUNC12(chip), "chip->need_release = 0x%x\n",
			(unsigned int)(chip->need_release));

#ifdef SUPPORT_OCP
		if (chip->need_release) {
			if (chip->ocp_stat & (CARD_OC_NOW | CARD_OC_EVER))
				rtsx_write_register(chip, OCPCLR,
						    CARD_OC_INT_CLR |
						    CARD_OC_CLR,
						    CARD_OC_INT_CLR |
						    CARD_OC_CLR);
			chip->ocp_stat = 0;
		}
#endif
		if (chip->need_release) {
			FUNC18(chip, RTSX_STAT_RUN);
			FUNC13(chip, SSC_PDCTL | OC_PDCTL);
		}

		if (chip->need_release & SD_CARD) {
			FUNC6(SD_NR, &chip->need_release);
			chip->card_exist &= ~SD_CARD;
			chip->card_ejected &= ~SD_CARD;
			chip->card_fail &= ~SD_CARD;
			FUNC2(chip->lun_mc, chip->card2lun[SD_CARD]);
			chip->rw_fail_cnt[chip->card2lun[SD_CARD]] = 0;
			FUNC19(chip, RBCTL, RB_FLUSH, RB_FLUSH);

			FUNC10(chip);
			FUNC9(chip);
		}

		if (chip->need_release & XD_CARD) {
			FUNC6(XD_NR, &chip->need_release);
			chip->card_exist &= ~XD_CARD;
			chip->card_ejected &= ~XD_CARD;
			chip->card_fail &= ~XD_CARD;
			FUNC2(chip->lun_mc, chip->card2lun[XD_CARD]);
			chip->rw_fail_cnt[chip->card2lun[XD_CARD]] = 0;

			FUNC11(chip);

			if (FUNC1(chip, 0x5288) &&
			    FUNC0(chip, QFN))
				FUNC19(chip, HOST_SLEEP_STATE,
						    0xC0, 0xC0);
		}

		if (chip->need_release & MS_CARD) {
			FUNC6(MS_NR, &chip->need_release);
			chip->card_exist &= ~MS_CARD;
			chip->card_ejected &= ~MS_CARD;
			chip->card_fail &= ~MS_CARD;
			FUNC2(chip->lun_mc, chip->card2lun[MS_CARD]);
			chip->rw_fail_cnt[chip->card2lun[MS_CARD]] = 0;

			FUNC8(chip);
		}

		FUNC7(FUNC12(chip), "chip->card_exist = 0x%x\n",
			chip->card_exist);

		if (!chip->card_exist)
			FUNC20(chip, LED_GPIO);
	}

	if (chip->need_reset) {
		FUNC7(FUNC12(chip), "chip->need_reset = 0x%x\n",
			(unsigned int)(chip->need_reset));

		FUNC16(chip);
	}

	if (chip->need_reinit) {
		FUNC7(FUNC12(chip), "chip->need_reinit = 0x%x\n",
			(unsigned int)(chip->need_reinit));

		FUNC15(chip, 0);
	}
}
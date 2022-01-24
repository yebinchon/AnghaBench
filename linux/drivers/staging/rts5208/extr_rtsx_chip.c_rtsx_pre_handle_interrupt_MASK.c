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
typedef  int u32 ;
struct rtsx_chip {int int_reg; int ocp_int; scalar_t__ sd_io; int /*<<< orphan*/  need_reinit; int /*<<< orphan*/  need_reset; scalar_t__ ms_show_cnt; scalar_t__ ms_reset_counter; int /*<<< orphan*/  need_release; scalar_t__ xd_show_cnt; scalar_t__ xd_reset_counter; scalar_t__ sd_show_cnt; scalar_t__ sd_reset_counter; scalar_t__ auto_delink_cnt; scalar_t__ ss_counter; scalar_t__ ss_en; } ;

/* Variables and functions */
 int CARD_INT ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int) ; 
 int DATA_DONE_INT ; 
 int MS_EXIST ; 
 int MS_INT ; 
 int /*<<< orphan*/  MS_NR ; 
 int OC_INT ; 
 int /*<<< orphan*/  QFN ; 
 int /*<<< orphan*/  RTSX_BIER ; 
 int /*<<< orphan*/  RTSX_BIPR ; 
 int /*<<< orphan*/  RTSX_STAT_RUN ; 
 scalar_t__ RTSX_STAT_SS ; 
 int SD_EXIST ; 
 int SD_INT ; 
 int /*<<< orphan*/  SD_NR ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int XD_EXIST ; 
 int XD_INT ; 
 int /*<<< orphan*/  XD_NR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 scalar_t__ FUNC4 (struct rtsx_chip*) ; 
 void* FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC8(struct rtsx_chip *chip)
{
	u32 status, int_enable;
	bool exit_ss = false;
#ifdef SUPPORT_OCP
	u32 ocp_int = 0;

	ocp_int = OC_INT;
#endif

	if (chip->ss_en) {
		chip->ss_counter = 0;
		if (FUNC4(chip) == RTSX_STAT_SS) {
			exit_ss = true;
			FUNC3(chip);
			FUNC6(chip, RTSX_STAT_RUN);
		}
	}

	int_enable = FUNC5(chip, RTSX_BIER);
	chip->int_reg = FUNC5(chip, RTSX_BIPR);

	if (((chip->int_reg & int_enable) == 0) ||
	    (chip->int_reg == 0xFFFFFFFF))
		return STATUS_FAIL;

	status = chip->int_reg &= (int_enable | 0x7FFFFF);

	if (status & CARD_INT) {
		chip->auto_delink_cnt = 0;

		if (status & SD_INT) {
			if (status & SD_EXIST) {
				FUNC7(SD_NR, &chip->need_reset);
			} else {
				FUNC7(SD_NR, &chip->need_release);
				chip->sd_reset_counter = 0;
				chip->sd_show_cnt = 0;
				FUNC2(SD_NR, &chip->need_reset);
			}
		} else {
			/*
			 * If multi-luns, it's possible that
			 * when plugging/unplugging one card
			 * there is another card which still
			 * exists in the slot. In this case,
			 * all existed cards should be reset.
			 */
			if (exit_ss && (status & SD_EXIST))
				FUNC7(SD_NR, &chip->need_reinit);
		}
		if (!FUNC1(chip, 0x5288) || FUNC0(chip, QFN)) {
			if (status & XD_INT) {
				if (status & XD_EXIST) {
					FUNC7(XD_NR, &chip->need_reset);
				} else {
					FUNC7(XD_NR, &chip->need_release);
					chip->xd_reset_counter = 0;
					chip->xd_show_cnt = 0;
					FUNC2(XD_NR, &chip->need_reset);
				}
			} else {
				if (exit_ss && (status & XD_EXIST))
					FUNC7(XD_NR, &chip->need_reinit);
			}
		}
		if (status & MS_INT) {
			if (status & MS_EXIST) {
				FUNC7(MS_NR, &chip->need_reset);
			} else {
				FUNC7(MS_NR, &chip->need_release);
				chip->ms_reset_counter = 0;
				chip->ms_show_cnt = 0;
				FUNC2(MS_NR, &chip->need_reset);
			}
		} else {
			if (exit_ss && (status & MS_EXIST))
				FUNC7(MS_NR, &chip->need_reinit);
		}
	}

#ifdef SUPPORT_OCP
	chip->ocp_int = ocp_int & status;
#endif

	if (chip->sd_io && (chip->int_reg & DATA_DONE_INT))
		chip->int_reg &= ~(u32)DATA_DONE_INT;

	return STATUS_SUCCESS;
}
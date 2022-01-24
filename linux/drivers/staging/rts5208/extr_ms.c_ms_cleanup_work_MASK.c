#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ delay_write_flag; } ;
struct ms_info {scalar_t__ cleanup_counter; TYPE_1__ delay_write; scalar_t__ seq_mode; } ;
struct rtsx_chip {struct ms_info ms_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ms_info*) ; 
 scalar_t__ FUNC1 (struct ms_info*) ; 
 int /*<<< orphan*/  MS_2K_SECTOR_MODE ; 
 int /*<<< orphan*/  MS_CFG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC7(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;

	if (FUNC1(ms_card)) {
		if (ms_card->seq_mode) {
			FUNC2(FUNC5(chip), "MS Pro: stop transmission\n");
			FUNC4(chip);
			ms_card->cleanup_counter = 0;
		}
		if (FUNC0(ms_card)) {
			FUNC6(chip, MS_CFG,
					    MS_2K_SECTOR_MODE, 0x00);
		}
	}
#ifdef MS_DELAY_WRITE
	else if ((!CHK_MSPRO(ms_card)) &&
		 ms_card->delay_write.delay_write_flag) {
		dev_dbg(rtsx_dev(chip), "MS: delay write\n");
		ms_delay_write(chip);
		ms_card->cleanup_counter = 0;
	}
#endif
}
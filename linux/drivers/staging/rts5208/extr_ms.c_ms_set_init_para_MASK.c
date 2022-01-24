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
struct ms_info {int /*<<< orphan*/  ms_clock; } ;
struct rtsx_chip {int /*<<< orphan*/  fpga_ms_1bit_clk; int /*<<< orphan*/  asic_ms_1bit_clk; scalar_t__ asic_code; int /*<<< orphan*/  fpga_ms_4bit_clk; int /*<<< orphan*/  asic_ms_4bit_clk; int /*<<< orphan*/  fpga_ms_hg_clk; int /*<<< orphan*/  asic_ms_hg_clk; struct ms_info ms_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ms_info*) ; 
 scalar_t__ FUNC1 (struct ms_info*) ; 
 scalar_t__ FUNC2 (struct ms_info*) ; 
 int /*<<< orphan*/  MS_CARD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct rtsx_chip *chip)
{
	struct ms_info *ms_card = &chip->ms_card;
	int retval;

	if (FUNC0(ms_card)) {
		if (chip->asic_code)
			ms_card->ms_clock = chip->asic_ms_hg_clk;
		else
			ms_card->ms_clock = chip->fpga_ms_hg_clk;

	} else if (FUNC2(ms_card) || FUNC1(ms_card)) {
		if (chip->asic_code)
			ms_card->ms_clock = chip->asic_ms_4bit_clk;
		else
			ms_card->ms_clock = chip->fpga_ms_4bit_clk;

	} else {
		if (chip->asic_code)
			ms_card->ms_clock = chip->asic_ms_1bit_clk;
		else
			ms_card->ms_clock = chip->fpga_ms_1bit_clk;
	}

	retval = FUNC4(chip, ms_card->ms_clock);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	retval = FUNC3(chip, MS_CARD);
	if (retval != STATUS_SUCCESS)
		return STATUS_FAIL;

	return STATUS_SUCCESS;
}
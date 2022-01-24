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
struct sd_info {int sd_clock; } ;
struct rtsx_chip {int asic_sd_sdr104_clk; int fpga_sd_sdr104_clk; int asic_sd_ddr50_clk; int fpga_sd_ddr50_clk; int asic_sd_sdr50_clk; int fpga_sd_sdr50_clk; int asic_sd_hs_clk; int fpga_sd_hs_clk; int asic_mmc_52m_clk; int fpga_mmc_52m_clk; scalar_t__ asic_code; struct sd_info sd_card; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sd_info*) ; 
 scalar_t__ FUNC1 (struct sd_info*) ; 
 scalar_t__ FUNC2 (struct sd_info*) ; 
 scalar_t__ FUNC3 (struct sd_info*) ; 
 scalar_t__ FUNC4 (struct sd_info*) ; 
 scalar_t__ FUNC5 (struct sd_info*) ; 
 scalar_t__ FUNC6 (struct sd_info*) ; 
 int CLK_50 ; 

__attribute__((used)) static void FUNC7(struct rtsx_chip *chip)
{
	struct sd_info *sd_card = &chip->sd_card;

	if (FUNC5(sd_card)) {
		if (chip->asic_code)
			sd_card->sd_clock = chip->asic_sd_sdr104_clk;
		else
			sd_card->sd_clock = chip->fpga_sd_sdr104_clk;

	} else if (FUNC3(sd_card)) {
		if (chip->asic_code)
			sd_card->sd_clock = chip->asic_sd_ddr50_clk;
		else
			sd_card->sd_clock = chip->fpga_sd_ddr50_clk;

	} else if (FUNC6(sd_card)) {
		if (chip->asic_code)
			sd_card->sd_clock = chip->asic_sd_sdr50_clk;
		else
			sd_card->sd_clock = chip->fpga_sd_sdr50_clk;

	} else if (FUNC4(sd_card)) {
		if (chip->asic_code)
			sd_card->sd_clock = chip->asic_sd_hs_clk;
		else
			sd_card->sd_clock = chip->fpga_sd_hs_clk;

	} else if (FUNC1(sd_card) || FUNC2(sd_card)) {
		if (chip->asic_code)
			sd_card->sd_clock = chip->asic_mmc_52m_clk;
		else
			sd_card->sd_clock = chip->fpga_mmc_52m_clk;

	} else if (FUNC0(sd_card)) {
		if (chip->asic_code)
			sd_card->sd_clock = 48;
		else
			sd_card->sd_clock = CLK_50;
	}
}
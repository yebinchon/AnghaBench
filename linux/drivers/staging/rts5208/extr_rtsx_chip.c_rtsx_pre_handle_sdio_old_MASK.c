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
struct rtsx_chip {int sd_int; int sd_io; int /*<<< orphan*/  need_reset; scalar_t__ asic_code; scalar_t__ ignore_sd; } ;

/* Variables and functions */
 int CARD_PULL_CTL5 ; 
 int CARD_SHARE_48_SD ; 
 int CARD_SHARE_MODE ; 
 scalar_t__ FUNC0 (struct rtsx_chip*) ; 
 int FPGA_PULL_CTL ; 
 int FPGA_SD_PULL_CTL_EN ; 
 int MS_INS_PU ; 
 int SDIO_BUS_CTRL ; 
 int SDIO_CD_CTRL ; 
 int SDIO_CTRL ; 
 int /*<<< orphan*/  SD_CARD ; 
 int SD_CD_PU ; 
 int SD_CMD_PU ; 
 int SD_WP_PU ; 
 int STATUS_SUCCESS ; 
 int FUNC1 (struct rtsx_chip*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct rtsx_chip *chip)
{
	int retval;

	if (chip->ignore_sd && FUNC0(chip)) {
		if (chip->asic_code) {
			retval = FUNC1(chip, CARD_PULL_CTL5,
						     0xFF,
						     MS_INS_PU | SD_WP_PU |
						     SD_CD_PU | SD_CMD_PU);
			if (retval)
				return retval;
		} else {
			retval = FUNC1(chip, FPGA_PULL_CTL,
						     0xFF,
						     FPGA_SD_PULL_CTL_EN);
			if (retval)
				return retval;
		}
		retval = FUNC1(chip, CARD_SHARE_MODE, 0xFF,
					     CARD_SHARE_48_SD);
		if (retval)
			return retval;

		/* Enable SDIO internal clock */
		retval = FUNC1(chip, 0xFF2C, 0x01, 0x01);
		if (retval)
			return retval;

		retval = FUNC1(chip, SDIO_CTRL, 0xFF,
					     SDIO_BUS_CTRL | SDIO_CD_CTRL);
		if (retval)
			return retval;

		chip->sd_int = 1;
		chip->sd_io = 1;
	} else {
		chip->need_reset |= SD_CARD;
	}

	return STATUS_SUCCESS;
}
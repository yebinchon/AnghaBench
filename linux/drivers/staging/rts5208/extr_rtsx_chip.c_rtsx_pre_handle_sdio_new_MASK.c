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
typedef  int u8 ;
struct rtsx_chip {int chip_insert_with_sdio; int sd_io; int /*<<< orphan*/  need_reset; scalar_t__ asic_code; scalar_t__ driver_first_load; scalar_t__ sdio_in_charge; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 int FPGA_PULL_CTL ; 
 int FPGA_SD_PULL_CTL_BIT ; 
 int /*<<< orphan*/  SD_CARD ; 
 int STATUS_FAIL ; 
 int STATUS_SUCCESS ; 
 int TLPTISTAT ; 
 int FUNC1 (struct rtsx_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int FUNC4 (struct rtsx_chip*,int,int*) ; 
 int FUNC5 (struct rtsx_chip*,int,int,int) ; 
 int FUNC6 (struct rtsx_chip*) ; 

__attribute__((used)) static int FUNC7(struct rtsx_chip *chip)
{
	u8 tmp;
	bool sw_bypass_sd = false;
	int retval;

	if (chip->driver_first_load) {
		if (FUNC0(chip, 0x5288)) {
			retval = FUNC4(chip, 0xFE5A, &tmp);
			if (retval)
				return retval;
			if (tmp & 0x08)
				sw_bypass_sd = true;
		} else if (FUNC0(chip, 0x5208)) {
			retval = FUNC4(chip, 0xFE70, &tmp);
			if (retval)
				return retval;
			if (tmp & 0x80)
				sw_bypass_sd = true;
		}
	} else {
		if (chip->sdio_in_charge)
			sw_bypass_sd = true;
	}
	FUNC2(FUNC3(chip), "chip->sdio_in_charge = %d\n",
		chip->sdio_in_charge);
	FUNC2(FUNC3(chip), "chip->driver_first_load = %d\n",
		chip->driver_first_load);
	FUNC2(FUNC3(chip), "sw_bypass_sd = %d\n",
		sw_bypass_sd);

	if (sw_bypass_sd) {
		u8 cd_toggle_mask = 0;

		retval = FUNC4(chip, TLPTISTAT, &tmp);
		if (retval)
			return retval;
		cd_toggle_mask = 0x08;

		if (tmp & cd_toggle_mask) {
			/* Disable sdio_bus_auto_switch */
			if (FUNC0(chip, 0x5288)) {
				retval = FUNC5(chip, 0xFE5A,
							     0x08, 0x00);
				if (retval)
					return retval;
			} else if (FUNC0(chip, 0x5208)) {
				retval = FUNC5(chip, 0xFE70,
							     0x80, 0x00);
				if (retval)
					return retval;
			}

			retval = FUNC5(chip, TLPTISTAT, 0xFF,
						     tmp);
			if (retval)
				return retval;

			chip->need_reset |= SD_CARD;
		} else {
			FUNC2(FUNC3(chip), "Chip inserted with SDIO!\n");

			if (chip->asic_code) {
				retval = FUNC6(chip);
				if (retval != STATUS_SUCCESS)
					return STATUS_FAIL;
			} else {
				retval = FUNC5
						(chip, FPGA_PULL_CTL,
						 FPGA_SD_PULL_CTL_BIT | 0x20,
						 0);
				if (retval)
					return retval;
			}
			retval = FUNC1(chip, SD_CARD);
			if (retval != STATUS_SUCCESS)
				return STATUS_FAIL;

			/* Enable sdio_bus_auto_switch */
			if (FUNC0(chip, 0x5288)) {
				retval = FUNC5(chip, 0xFE5A,
							     0x08, 0x08);
				if (retval)
					return retval;
			} else if (FUNC0(chip, 0x5208)) {
				retval = FUNC5(chip, 0xFE70,
							     0x80, 0x80);
				if (retval)
					return retval;
			}

			chip->chip_insert_with_sdio = 1;
			chip->sd_io = 1;
		}
	} else {
		retval = FUNC5(chip, TLPTISTAT, 0x08, 0x08);
		if (retval)
			return retval;

		chip->need_reset |= SD_CARD;
	}

	return STATUS_SUCCESS;
}
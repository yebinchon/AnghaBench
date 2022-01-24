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
struct rtsx_chip {scalar_t__ sdio_counter; int sdio_idle; int sdio_aspm; int* aspm_level; int /*<<< orphan*/  sdio_raw_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_FORCE_CTL ; 
 scalar_t__ SDIO_IDLE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

void FUNC6(struct rtsx_chip *chip)
{
	u8 buf[12], reg;
	int i;

	for (i = 0; i < 12; i++)
		FUNC4(chip, 0xFF08 + i, &buf[i]);
	FUNC4(chip, 0xFF25, &reg);
	if ((FUNC1(buf, chip->sdio_raw_data, 12) != 0) || (reg & 0x03)) {
		chip->sdio_counter = 0;
		chip->sdio_idle = 0;
	} else {
		if (!chip->sdio_idle) {
			chip->sdio_counter++;
			if (chip->sdio_counter >= SDIO_IDLE_COUNT) {
				chip->sdio_counter = 0;
				chip->sdio_idle = 1;
			}
		}
	}
	FUNC2(chip->sdio_raw_data, buf, 12);

	if (chip->sdio_idle) {
		if (!chip->sdio_aspm) {
			FUNC0(FUNC3(chip), "SDIO enter ASPM!\n");
			FUNC5(chip, ASPM_FORCE_CTL, 0xFC,
					    0x30 | (chip->aspm_level[1] << 2));
			chip->sdio_aspm = 1;
		}
	} else {
		if (chip->sdio_aspm) {
			FUNC0(FUNC3(chip), "SDIO exit ASPM!\n");
			FUNC5(chip, ASPM_FORCE_CTL, 0xFC, 0x30);
			chip->sdio_aspm = 0;
		}
	}
}
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
struct rtsx_chip {int sdio_aspm; int* aspm_level; scalar_t__ sd_io; int /*<<< orphan*/  dynamic_aspm; int /*<<< orphan*/  aspm_l0s_l1_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASPM_FORCE_CTL ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 scalar_t__ FUNC2 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC8(struct rtsx_chip *chip)
{
	u8 data;

	if (!FUNC0(chip, 0x5208))
		return;

	FUNC6(chip);

#ifdef SUPPORT_SDIO_ASPM
	if (!CHK_SDIO_EXIST(chip) || CHK_SDIO_IGNORED(chip) ||
	    !chip->aspm_l0s_l1_en || !chip->dynamic_aspm)
		return;

	if (chip->sd_io) {
		dynamic_configure_sdio_aspm(chip);
		return;
	}

	if (chip->sdio_aspm)
		return;

	dev_dbg(rtsx_dev(chip), "SDIO enter ASPM!\n");
	data = 0x30 | (chip->aspm_level[1] << 2);
	rtsx_write_register(chip, ASPM_FORCE_CTL, 0xFC, data);
	chip->sdio_aspm = 1;
#endif
}
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
struct rtsx_chip {scalar_t__ sd_io; scalar_t__ chip_insert_with_sdio; } ;

/* Variables and functions */
 int CARD_STOP ; 
 scalar_t__ FUNC0 (struct rtsx_chip*,int) ; 
 int SDIO_CD_CTRL ; 
 int SDIO_CTRL ; 
 int SD_CLR_ERR ; 
 int SD_STOP ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct rtsx_chip *chip)
{
	if (chip->sd_io) {
		FUNC1(chip, CARD_STOP, SD_STOP | SD_CLR_ERR,
				    SD_STOP | SD_CLR_ERR);

		if (chip->chip_insert_with_sdio) {
			chip->chip_insert_with_sdio = 0;

			if (FUNC0(chip, 0x5288))
				FUNC1(chip, 0xFE5A, 0x08, 0x00);
			else
				FUNC1(chip, 0xFE70, 0x80, 0x00);
		}

		FUNC1(chip, SDIO_CTRL, SDIO_CD_CTRL, 0);
		chip->sd_io = 0;
	}
}
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
struct rtsx_chip {int sd_int; } ;

/* Variables and functions */
 int LDO3318_PWR_MASK ; 
 int LDO_ON ; 
 int /*<<< orphan*/  PWR_GATE_CTRL ; 
 int SDIO_BUS_CTRL ; 
 int SDIO_CD_CTRL ; 
 int /*<<< orphan*/  SDIO_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 

void FUNC4(struct rtsx_chip *chip)
{
	u8 reg1 = 0, reg2 = 0;

	FUNC2(chip, 0xFF34, &reg1);
	FUNC2(chip, 0xFF38, &reg2);
	FUNC0(FUNC1(chip), "reg 0xFF34: 0x%x, reg 0xFF38: 0x%x\n",
		reg1, reg2);
	if ((reg1 & 0xC0) && (reg2 & 0xC0)) {
		chip->sd_int = 1;
		FUNC3(chip, SDIO_CTRL, 0xFF,
				    SDIO_BUS_CTRL | SDIO_CD_CTRL);
		FUNC3(chip, PWR_GATE_CTRL,
				    LDO3318_PWR_MASK, LDO_ON);
	}
}
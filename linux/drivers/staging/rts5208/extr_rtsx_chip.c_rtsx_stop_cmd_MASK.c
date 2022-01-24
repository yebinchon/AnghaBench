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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct rtsx_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMACTL ; 
 int /*<<< orphan*/  RBCTL ; 
 int RTSX_HCBAR ; 
 int /*<<< orphan*/  RTSX_HCBCTLR ; 
 int /*<<< orphan*/  RTSX_HDBCTLR ; 
 int /*<<< orphan*/  STOP_CMD ; 
 int /*<<< orphan*/  STOP_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_chip*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_chip*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_chip*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rtsx_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct rtsx_chip *chip, int card)
{
	int i;

	for (i = 0; i <= 8; i++) {
		int addr = RTSX_HCBAR + i * 4;
		u32 reg;

		reg = FUNC3(chip, addr);
		FUNC0(FUNC1(chip), "BAR (0x%02x): 0x%08x\n", addr, reg);
	}
	FUNC5(chip, RTSX_HCBCTLR, STOP_CMD);
	FUNC5(chip, RTSX_HDBCTLR, STOP_DMA);

	for (i = 0; i < 16; i++) {
		u16 addr = 0xFE20 + (u16)i;
		u8 val;

		FUNC2(chip, addr, &val);
		FUNC0(FUNC1(chip), "0x%04X: 0x%02x\n", addr, val);
	}

	FUNC4(chip, DMACTL, 0x80, 0x80);
	FUNC4(chip, RBCTL, 0x80, 0x80);
}
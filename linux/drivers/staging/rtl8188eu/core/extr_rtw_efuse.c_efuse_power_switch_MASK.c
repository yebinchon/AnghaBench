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
typedef  int u16 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int ANA8M ; 
 int EFUSE_ACCESS_OFF ; 
 int EFUSE_ACCESS_ON ; 
 scalar_t__ EFUSE_TEST ; 
 int FEN_ELDR ; 
 int LOADER_CLK_EN ; 
 int PWC_EV12V ; 
 scalar_t__ REG_EFUSE_ACCESS ; 
 int /*<<< orphan*/  REG_SYS_CLKR ; 
 int /*<<< orphan*/  REG_SYS_FUNC_EN ; 
 int /*<<< orphan*/  REG_SYS_ISO_CTRL ; 
 int VOLTAGE_V25 ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,scalar_t__,int) ; 

void FUNC4(struct adapter *pAdapter, u8 write, u8 pwrstate)
{
	u8 tempval;
	u16 tmpv16;

	if (pwrstate) {
		FUNC3(pAdapter, REG_EFUSE_ACCESS, EFUSE_ACCESS_ON);

		/*  1.2V Power: From VDDON with Power Cut(0x0000h[15]), default valid */
		tmpv16 = FUNC0(pAdapter, REG_SYS_ISO_CTRL);
		if (!(tmpv16 & PWC_EV12V)) {
			tmpv16 |= PWC_EV12V;
			FUNC2(pAdapter, REG_SYS_ISO_CTRL, tmpv16);
		}
		/*  Reset: 0x0000h[28], default valid */
		tmpv16 =  FUNC0(pAdapter, REG_SYS_FUNC_EN);
		if (!(tmpv16 & FEN_ELDR)) {
			tmpv16 |= FEN_ELDR;
			FUNC2(pAdapter, REG_SYS_FUNC_EN, tmpv16);
		}

		/*  Clock: Gated(0x0008h[5]) 8M(0x0008h[1]) clock from ANA, default valid */
		tmpv16 = FUNC0(pAdapter, REG_SYS_CLKR);
		if ((!(tmpv16 & LOADER_CLK_EN))  || (!(tmpv16 & ANA8M))) {
			tmpv16 |= (LOADER_CLK_EN | ANA8M);
			FUNC2(pAdapter, REG_SYS_CLKR, tmpv16);
		}

		if (write) {
			/*  Enable LDO 2.5V before read/write action */
			tempval = FUNC1(pAdapter, EFUSE_TEST + 3);
			tempval &= 0x0F;
			tempval |= (VOLTAGE_V25 << 4);
			FUNC3(pAdapter, EFUSE_TEST + 3, (tempval | 0x80));
		}
	} else {
		FUNC3(pAdapter, REG_EFUSE_ACCESS, EFUSE_ACCESS_OFF);

		if (write) {
			/*  Disable LDO 2.5V after read/write action */
			tempval = FUNC1(pAdapter, EFUSE_TEST + 3);
			FUNC3(pAdapter, EFUSE_TEST + 3, (tempval & 0x7F));
		}
	}
}
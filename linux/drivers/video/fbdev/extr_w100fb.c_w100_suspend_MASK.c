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
typedef  int u32 ;

/* Variables and functions */
 int W100_SUSPEND_EXTMEM ; 
 scalar_t__ mmCLK_PIN_CNTL ; 
 scalar_t__ mmGENLCD_CNTL1 ; 
 scalar_t__ mmGENLCD_CNTL2 ; 
 scalar_t__ mmGENLCD_CNTL3 ; 
 scalar_t__ mmLCDD_CNTL1 ; 
 scalar_t__ mmLCDD_CNTL2 ; 
 scalar_t__ mmMC_EXT_MEM_LOCATION ; 
 scalar_t__ mmMC_PERF_MON_CNTL ; 
 scalar_t__ mmMEM_EXT_CNTL ; 
 scalar_t__ mmMEM_EXT_TIMING_CNTL ; 
 scalar_t__ mmPLL_CNTL ; 
 scalar_t__ mmPWRMGT_CNTL ; 
 scalar_t__ mmSCLK_CNTL ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ remapped_regs ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(u32 mode)
{
	u32 val;

	FUNC2(0x7FFF8000, remapped_regs + mmMC_EXT_MEM_LOCATION);
	FUNC2(0x00FF0000, remapped_regs + mmMC_PERF_MON_CNTL);

	val = FUNC0(remapped_regs + mmMEM_EXT_TIMING_CNTL);
	val &= ~(0x00100000);  /* bit20=0 */
	val |= 0xFF000000;     /* bit31:24=0xff */
	FUNC2(val, remapped_regs + mmMEM_EXT_TIMING_CNTL);

	val = FUNC0(remapped_regs + mmMEM_EXT_CNTL);
	val &= ~(0x00040000);  /* bit18=0 */
	val |= 0x00080000;     /* bit19=1 */
	FUNC2(val, remapped_regs + mmMEM_EXT_CNTL);

	FUNC1(1);  /* wait 1us */

	if (mode == W100_SUSPEND_EXTMEM) {
		/* CKE: Tri-State */
		val = FUNC0(remapped_regs + mmMEM_EXT_CNTL);
		val |= 0x40000000;  /* bit30=1 */
		FUNC2(val, remapped_regs + mmMEM_EXT_CNTL);

		/* CLK: Stop */
		val = FUNC0(remapped_regs + mmMEM_EXT_CNTL);
		val &= ~(0x00000001);  /* bit0=0 */
		FUNC2(val, remapped_regs + mmMEM_EXT_CNTL);
	} else {
		FUNC2(0x00000000, remapped_regs + mmSCLK_CNTL);
		FUNC2(0x000000BF, remapped_regs + mmCLK_PIN_CNTL);
		FUNC2(0x00000015, remapped_regs + mmPWRMGT_CNTL);

		FUNC1(5);

		val = FUNC0(remapped_regs + mmPLL_CNTL);
		val |= 0x00000004;  /* bit2=1 */
		FUNC2(val, remapped_regs + mmPLL_CNTL);

		FUNC2(0x00000000, remapped_regs + mmLCDD_CNTL1);
		FUNC2(0x00000000, remapped_regs + mmLCDD_CNTL2);
		FUNC2(0x00000000, remapped_regs + mmGENLCD_CNTL1);
		FUNC2(0x00000000, remapped_regs + mmGENLCD_CNTL2);
		FUNC2(0x00000000, remapped_regs + mmGENLCD_CNTL3);

		val = FUNC0(remapped_regs + mmMEM_EXT_CNTL);
		val |= 0xF0000000;
		val &= ~(0x00000001);
		FUNC2(val, remapped_regs + mmMEM_EXT_CNTL);

		FUNC2(0x0000001d, remapped_regs + mmPWRMGT_CNTL);
	}
}
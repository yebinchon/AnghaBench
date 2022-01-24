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
struct q6v5_wcss {scalar_t__ reg_base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  HALT_CHECK_MAX_LOOPS ; 
 int MEM_BANKS ; 
 int Q6SS_BHS_ON ; 
 int Q6SS_BUS_ARES_ENABLE ; 
 int Q6SS_CLAMP_IO ; 
 int Q6SS_CLAMP_QMC_MEM ; 
 int Q6SS_CLAMP_WL ; 
 int Q6SS_CLK_ENABLE ; 
 int Q6SS_CORE_ARES ; 
 scalar_t__ Q6SS_GFMUX_CTL_REG ; 
 int Q6SS_L2DATA_STBY_N ; 
 int Q6SS_LDO_BYP ; 
 scalar_t__ Q6SS_MEM_PWR_CTL ; 
 scalar_t__ Q6SS_PWR_CTL_REG ; 
 scalar_t__ Q6SS_RESET_REG ; 
 int Q6SS_SLP_RET_N ; 
 int Q6SS_STOP_CORE ; 
 scalar_t__ Q6SS_XO_CBCR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct q6v5_wcss *wcss)
{
	int ret;
	u32 val;
	int i;

	/* Assert resets, stop core */
	val = FUNC2(wcss->reg_base + Q6SS_RESET_REG);
	val |= Q6SS_CORE_ARES | Q6SS_BUS_ARES_ENABLE | Q6SS_STOP_CORE;
	FUNC5(val, wcss->reg_base + Q6SS_RESET_REG);

	/* BHS require xo cbcr to be enabled */
	val = FUNC2(wcss->reg_base + Q6SS_XO_CBCR);
	val |= 0x1;
	FUNC5(val, wcss->reg_base + Q6SS_XO_CBCR);

	/* Read CLKOFF bit to go low indicating CLK is enabled */
	ret = FUNC3(wcss->reg_base + Q6SS_XO_CBCR,
				 val, !(val & FUNC0(31)), 1,
				 HALT_CHECK_MAX_LOOPS);
	if (ret) {
		FUNC1(wcss->dev,
			"xo cbcr enabling timed out (rc:%d)\n", ret);
		return ret;
	}
	/* Enable power block headswitch and wait for it to stabilize */
	val = FUNC2(wcss->reg_base + Q6SS_PWR_CTL_REG);
	val |= Q6SS_BHS_ON;
	FUNC5(val, wcss->reg_base + Q6SS_PWR_CTL_REG);
	FUNC4(1);

	/* Put LDO in bypass mode */
	val |= Q6SS_LDO_BYP;
	FUNC5(val, wcss->reg_base + Q6SS_PWR_CTL_REG);

	/* Deassert Q6 compiler memory clamp */
	val = FUNC2(wcss->reg_base + Q6SS_PWR_CTL_REG);
	val &= ~Q6SS_CLAMP_QMC_MEM;
	FUNC5(val, wcss->reg_base + Q6SS_PWR_CTL_REG);

	/* Deassert memory peripheral sleep and L2 memory standby */
	val |= Q6SS_L2DATA_STBY_N | Q6SS_SLP_RET_N;
	FUNC5(val, wcss->reg_base + Q6SS_PWR_CTL_REG);

	/* Turn on L1, L2, ETB and JU memories 1 at a time */
	val = FUNC2(wcss->reg_base + Q6SS_MEM_PWR_CTL);
	for (i = MEM_BANKS; i >= 0; i--) {
		val |= FUNC0(i);
		FUNC5(val, wcss->reg_base + Q6SS_MEM_PWR_CTL);
		/*
		 * Read back value to ensure the write is done then
		 * wait for 1us for both memory peripheral and data
		 * array to turn on.
		 */
		val |= FUNC2(wcss->reg_base + Q6SS_MEM_PWR_CTL);
		FUNC4(1);
	}
	/* Remove word line clamp */
	val = FUNC2(wcss->reg_base + Q6SS_PWR_CTL_REG);
	val &= ~Q6SS_CLAMP_WL;
	FUNC5(val, wcss->reg_base + Q6SS_PWR_CTL_REG);

	/* Remove IO clamp */
	val &= ~Q6SS_CLAMP_IO;
	FUNC5(val, wcss->reg_base + Q6SS_PWR_CTL_REG);

	/* Bring core out of reset */
	val = FUNC2(wcss->reg_base + Q6SS_RESET_REG);
	val &= ~Q6SS_CORE_ARES;
	FUNC5(val, wcss->reg_base + Q6SS_RESET_REG);

	/* Turn on core clock */
	val = FUNC2(wcss->reg_base + Q6SS_GFMUX_CTL_REG);
	val |= Q6SS_CLK_ENABLE;
	FUNC5(val, wcss->reg_base + Q6SS_GFMUX_CTL_REG);

	/* Start core execution */
	val = FUNC2(wcss->reg_base + Q6SS_RESET_REG);
	val &= ~Q6SS_STOP_CORE;
	FUNC5(val, wcss->reg_base + Q6SS_RESET_REG);

	return 0;
}
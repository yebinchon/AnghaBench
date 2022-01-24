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
struct wcove_tmu {int /*<<< orphan*/  regmap; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BXTWC_MIRQLVL1 ; 
 unsigned int BXTWC_MIRQLVL1_MTMU ; 
 int /*<<< orphan*/  BXTWC_MTMUIRQ_REG ; 
 unsigned int BXTWC_TMU_ALRM_MASK ; 
 struct wcove_tmu* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct wcove_tmu *wctmu = FUNC0(pdev);
	unsigned int val;

	/* Mask TMU interrupts */
	FUNC1(wctmu->regmap, BXTWC_MIRQLVL1, &val);
	FUNC2(wctmu->regmap, BXTWC_MIRQLVL1,
			val | BXTWC_MIRQLVL1_MTMU);
	FUNC1(wctmu->regmap, BXTWC_MTMUIRQ_REG, &val);
	FUNC2(wctmu->regmap, BXTWC_MTMUIRQ_REG,
			val | BXTWC_TMU_ALRM_MASK);
	return 0;
}
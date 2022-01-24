#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stm32_rtc_registers {int /*<<< orphan*/  cr; int /*<<< orphan*/  prer; } ;
struct stm32_rtc {scalar_t__ base; int /*<<< orphan*/  rtc_ck; TYPE_1__* data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;

/* Variables and functions */
 unsigned int STM32_RTC_CR_FMT ; 
 unsigned int STM32_RTC_PRER_PRED_A ; 
 unsigned int STM32_RTC_PRER_PRED_A_SHIFT ; 
 unsigned int STM32_RTC_PRER_PRED_S ; 
 unsigned int STM32_RTC_PRER_PRED_S_SHIFT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct stm32_rtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct stm32_rtc*) ; 
 int FUNC6 (struct stm32_rtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_rtc*) ; 
 int /*<<< orphan*/  FUNC8 (struct stm32_rtc*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev,
			  struct stm32_rtc *rtc)
{
	const struct stm32_rtc_registers *regs = &rtc->data->regs;
	unsigned int prer, pred_a, pred_s, pred_a_max, pred_s_max, cr;
	unsigned int rate;
	int ret = 0;

	rate = FUNC0(rtc->rtc_ck);

	/* Find prediv_a and prediv_s to obtain the 1Hz calendar clock */
	pred_a_max = STM32_RTC_PRER_PRED_A >> STM32_RTC_PRER_PRED_A_SHIFT;
	pred_s_max = STM32_RTC_PRER_PRED_S >> STM32_RTC_PRER_PRED_S_SHIFT;

	for (pred_a = pred_a_max; pred_a + 1 > 0; pred_a--) {
		pred_s = (rate / (pred_a + 1)) - 1;

		if (((pred_s + 1) * (pred_a + 1)) == rate)
			break;
	}

	/*
	 * Can't find a 1Hz, so give priority to RTC power consumption
	 * by choosing the higher possible value for prediv_a
	 */
	if ((pred_s > pred_s_max) || (pred_a > pred_a_max)) {
		pred_a = pred_a_max;
		pred_s = (rate / (pred_a + 1)) - 1;

		FUNC2(&pdev->dev, "rtc_ck is %s\n",
			 (rate < ((pred_a + 1) * (pred_s + 1))) ?
			 "fast" : "slow");
	}

	FUNC8(rtc);

	ret = FUNC4(rtc);
	if (ret) {
		FUNC1(&pdev->dev,
			"Can't enter in init mode. Prescaler config failed.\n");
		goto end;
	}

	prer = (pred_s << STM32_RTC_PRER_PRED_S_SHIFT) & STM32_RTC_PRER_PRED_S;
	FUNC9(prer, rtc->base + regs->prer);
	prer |= (pred_a << STM32_RTC_PRER_PRED_A_SHIFT) & STM32_RTC_PRER_PRED_A;
	FUNC9(prer, rtc->base + regs->prer);

	/* Force 24h time format */
	cr = FUNC3(rtc->base + regs->cr);
	cr &= ~STM32_RTC_CR_FMT;
	FUNC9(cr, rtc->base + regs->cr);

	FUNC5(rtc);

	ret = FUNC6(rtc);
end:
	FUNC7(rtc);

	return ret;
}
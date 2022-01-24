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
struct stm32_rtc_registers {int /*<<< orphan*/  cr; } ;
struct stm32_rtc {int /*<<< orphan*/  dbp_mask; int /*<<< orphan*/  dbp_reg; int /*<<< orphan*/  dbp; TYPE_1__* data; int /*<<< orphan*/  pclk; int /*<<< orphan*/  rtc_ck; scalar_t__ base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ need_dbp; scalar_t__ has_pclk; struct stm32_rtc_registers regs; } ;

/* Variables and functions */
 unsigned int STM32_RTC_CR_ALRAIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct stm32_rtc* FUNC3 (struct platform_device*) ; 
 unsigned int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_rtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct stm32_rtc*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct stm32_rtc *rtc = FUNC3(pdev);
	const struct stm32_rtc_registers *regs = &rtc->data->regs;
	unsigned int cr;

	/* Disable interrupts */
	FUNC7(rtc);
	cr = FUNC4(rtc->base + regs->cr);
	cr &= ~STM32_RTC_CR_ALRAIE;
	FUNC8(cr, rtc->base + regs->cr);
	FUNC6(rtc);

	FUNC0(rtc->rtc_ck);
	if (rtc->data->has_pclk)
		FUNC0(rtc->pclk);

	/* Enable backup domain write protection if needed */
	if (rtc->data->need_dbp)
		FUNC5(rtc->dbp, rtc->dbp_reg, rtc->dbp_mask, 0);

	FUNC1(&pdev->dev);
	FUNC2(&pdev->dev, false);

	return 0;
}
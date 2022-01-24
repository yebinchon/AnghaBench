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
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gemini_powercon {scalar_t__ base; struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int GEMINI_CTRL_ENABLE ; 
 int GEMINI_CTRL_IRQ_CLR ; 
 scalar_t__ GEMINI_PWC_CTRLREG ; 
 int GEMINI_PWC_ID ; 
 scalar_t__ GEMINI_PWC_IDREG ; 
 scalar_t__ GEMINI_PWC_STATREG ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (struct device*,struct resource*) ; 
 struct gemini_powercon* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct gemini_powercon*) ; 
 int /*<<< orphan*/  gemini_powerbutton_interrupt ; 
 int /*<<< orphan*/  gemini_poweroff ; 
 struct gemini_powercon* gpw_poweroff ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pm_power_off ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct gemini_powercon *gpw;
	u32 val;
	int irq;
	int ret;

	gpw = FUNC5(dev, sizeof(*gpw), GFP_KERNEL);
	if (!gpw)
		return -ENOMEM;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	gpw->base = FUNC4(dev, res);
	if (FUNC0(gpw->base))
		return FUNC1(gpw->base);

	irq = FUNC7(pdev, 0);
	if (!irq)
		return -EINVAL;

	gpw->dev = dev;

	val = FUNC9(gpw->base + GEMINI_PWC_IDREG);
	val &= 0xFFFFFF00U;
	if (val != GEMINI_PWC_ID) {
		FUNC2(dev, "wrong power controller ID: %08x\n",
			val);
		return -ENODEV;
	}

	/*
	 * Enable the power controller. This is crucial on Gemini
	 * systems: if this is not done, pressing the power button
	 * will result in unconditional poweroff without any warning.
	 * This makes the kernel handle the poweroff.
	 */
	val = FUNC9(gpw->base + GEMINI_PWC_CTRLREG);
	val |= GEMINI_CTRL_ENABLE;
	FUNC10(val, gpw->base + GEMINI_PWC_CTRLREG);

	/* Clear the IRQ */
	val = FUNC9(gpw->base + GEMINI_PWC_CTRLREG);
	val |= GEMINI_CTRL_IRQ_CLR;
	FUNC10(val, gpw->base + GEMINI_PWC_CTRLREG);

	/* Wait for this to clear */
	val = FUNC9(gpw->base + GEMINI_PWC_STATREG);
	while (val & 0x70U)
		val = FUNC9(gpw->base + GEMINI_PWC_STATREG);

	/* Clear the IRQ again */
	val = FUNC9(gpw->base + GEMINI_PWC_CTRLREG);
	val |= GEMINI_CTRL_IRQ_CLR;
	FUNC10(val, gpw->base + GEMINI_PWC_CTRLREG);

	ret = FUNC6(dev, irq, gemini_powerbutton_interrupt, 0,
			       "poweroff", gpw);
	if (ret)
		return ret;

	pm_power_off = gemini_poweroff;
	gpw_poweroff = gpw;

	FUNC3(dev, "Gemini poweroff driver registered\n");

	return 0;
}
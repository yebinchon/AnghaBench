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
struct stm32_syscon {unsigned int mask; int /*<<< orphan*/  reg; int /*<<< orphan*/  map; } ;
struct stm32_rproc {unsigned int secured_soc; struct stm32_syscon pdds; struct stm32_syscon hold_boot; int /*<<< orphan*/  rst; } ;
struct device {struct device_node* of_node; } ;
struct rproc {int /*<<< orphan*/  auto_boot; struct device dev; struct stm32_rproc* priv; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rproc*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*,char*) ; 
 struct rproc* FUNC9 (struct platform_device*) ; 
 int FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC12 (struct device_node*,char*,struct stm32_syscon*) ; 
 int FUNC13 (struct rproc*) ; 
 int /*<<< orphan*/  stm32_rproc_wdg ; 

__attribute__((used)) static int FUNC14(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct rproc *rproc = FUNC9(pdev);
	struct stm32_rproc *ddata = rproc->priv;
	struct stm32_syscon tz;
	unsigned int tzen;
	int err, irq;

	irq = FUNC10(pdev, 0);
	if (irq == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	if (irq > 0) {
		err = FUNC6(dev, irq, stm32_rproc_wdg, 0,
				       FUNC4(dev), rproc);
		if (err) {
			FUNC2(dev, "failed to request wdg irq\n");
			return err;
		}

		FUNC3(dev, "wdg irq registered\n");
	}

	ddata->rst = FUNC7(dev, 0);
	if (FUNC0(ddata->rst)) {
		FUNC2(dev, "failed to get mcu reset\n");
		return FUNC1(ddata->rst);
	}

	/*
	 * if platform is secured the hold boot bit must be written by
	 * smc call and read normally.
	 * if not secure the hold boot bit could be read/write normally
	 */
	err = FUNC12(np, "st,syscfg-tz", &tz);
	if (err) {
		FUNC2(dev, "failed to get tz syscfg\n");
		return err;
	}

	err = FUNC11(tz.map, tz.reg, &tzen);
	if (err) {
		FUNC2(&rproc->dev, "failed to read tzen\n");
		return err;
	}
	ddata->secured_soc = tzen & tz.mask;

	err = FUNC12(np, "st,syscfg-holdboot",
				     &ddata->hold_boot);
	if (err) {
		FUNC2(dev, "failed to get hold boot\n");
		return err;
	}

	err = FUNC12(np, "st,syscfg-pdds", &ddata->pdds);
	if (err)
		FUNC5(dev, "failed to get pdds\n");

	rproc->auto_boot = FUNC8(np, "st,auto-boot");

	return FUNC13(rproc);
}
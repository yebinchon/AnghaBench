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
struct siox_master {scalar_t__ busno; int /*<<< orphan*/  pushpull; } ;
struct siox_gpio_ddata {void* dld; void* dclk; void* dout; void* din; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 void* FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct siox_master*) ; 
 int /*<<< orphan*/  siox_gpio_pushpull ; 
 struct siox_master* FUNC5 (struct device*,int) ; 
 struct siox_gpio_ddata* FUNC6 (struct siox_master*) ; 
 int /*<<< orphan*/  FUNC7 (struct siox_master*) ; 
 int FUNC8 (struct siox_master*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct siox_gpio_ddata *ddata;
	int ret;
	struct siox_master *smaster;

	smaster = FUNC5(&pdev->dev, sizeof(*ddata));
	if (!smaster) {
		FUNC2(dev, "failed to allocate siox master\n");
		return -ENOMEM;
	}

	FUNC4(pdev, smaster);
	ddata = FUNC6(smaster);

	ddata->din = FUNC3(dev, "din", GPIOD_IN);
	if (FUNC0(ddata->din)) {
		ret = FUNC1(ddata->din);
		FUNC2(dev, "Failed to get %s GPIO: %d\n", "din", ret);
		goto err;
	}

	ddata->dout = FUNC3(dev, "dout", GPIOD_OUT_LOW);
	if (FUNC0(ddata->dout)) {
		ret = FUNC1(ddata->dout);
		FUNC2(dev, "Failed to get %s GPIO: %d\n", "dout", ret);
		goto err;
	}

	ddata->dclk = FUNC3(dev, "dclk", GPIOD_OUT_LOW);
	if (FUNC0(ddata->dclk)) {
		ret = FUNC1(ddata->dclk);
		FUNC2(dev, "Failed to get %s GPIO: %d\n", "dclk", ret);
		goto err;
	}

	ddata->dld = FUNC3(dev, "dld", GPIOD_OUT_LOW);
	if (FUNC0(ddata->dld)) {
		ret = FUNC1(ddata->dld);
		FUNC2(dev, "Failed to get %s GPIO: %d\n", "dld", ret);
		goto err;
	}

	smaster->pushpull = siox_gpio_pushpull;
	/* XXX: determine automatically like spi does */
	smaster->busno = 0;

	ret = FUNC8(smaster);
	if (ret) {
		FUNC2(dev, "Failed to register siox master: %d\n", ret);
err:
		FUNC7(smaster);
	}

	return ret;
}
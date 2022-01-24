#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct hdq_data {int mode; int /*<<< orphan*/  hdq_spinlock; int /*<<< orphan*/  hdq_mutex; scalar_t__ rrw; scalar_t__ hdq_usecount; int /*<<< orphan*/  hdq_base; struct device* dev; } ;
struct TYPE_3__ {struct hdq_data* data; int /*<<< orphan*/  triplet; int /*<<< orphan*/  search; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OMAP_HDQ_REVISION ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct hdq_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int,char*) ; 
 struct hdq_data* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct hdq_data*) ; 
 int /*<<< orphan*/  hdq_isr ; 
 int FUNC8 (struct hdq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,char const**) ; 
 int /*<<< orphan*/  FUNC11 (struct hdq_data*) ; 
 TYPE_1__ omap_w1_master ; 
 int /*<<< orphan*/  omap_w1_search_bus ; 
 int /*<<< orphan*/  omap_w1_triplet ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct hdq_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int FUNC16 (struct device*) ; 
 int /*<<< orphan*/  FUNC17 (struct device*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 int FUNC20 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct hdq_data *hdq_data;
	int ret, irq;
	u8 rev;
	const char *mode;

	hdq_data = FUNC5(dev, sizeof(*hdq_data), GFP_KERNEL);
	if (!hdq_data) {
		FUNC3(&pdev->dev, "unable to allocate memory\n");
		return -ENOMEM;
	}

	hdq_data->dev = dev;
	FUNC13(pdev, hdq_data);

	hdq_data->hdq_base = FUNC6(pdev, 0);
	if (FUNC0(hdq_data->hdq_base))
		return FUNC1(hdq_data->hdq_base);

	hdq_data->hdq_usecount = 0;
	hdq_data->rrw = 0;
	FUNC9(&hdq_data->hdq_mutex);

	FUNC15(&pdev->dev);
	ret = FUNC16(&pdev->dev);
	if (ret < 0) {
		FUNC3(&pdev->dev, "pm_runtime_get_sync failed\n");
		goto err_w1;
	}

	ret = FUNC2(hdq_data);
	if (ret) {
		FUNC3(&pdev->dev, "reset failed\n");
		goto err_irq;
	}

	rev = FUNC8(hdq_data, OMAP_HDQ_REVISION);
	FUNC4(&pdev->dev, "OMAP HDQ Hardware Rev %c.%c. Driver in %s mode\n",
		(rev >> 4) + '0', (rev & 0x0f) + '0', "Interrupt");

	FUNC18(&hdq_data->hdq_spinlock);

	irq = FUNC12(pdev, 0);
	if (irq	< 0) {
		FUNC3(&pdev->dev, "Failed to get IRQ: %d\n", irq);
		ret = irq;
		goto err_irq;
	}

	ret = FUNC7(dev, irq, hdq_isr, 0, "omap_hdq", hdq_data);
	if (ret < 0) {
		FUNC3(&pdev->dev, "could not request irq\n");
		goto err_irq;
	}

	FUNC11(hdq_data);

	FUNC17(&pdev->dev);

	ret = FUNC10(pdev->dev.of_node, "ti,mode", &mode);
	if (ret < 0 || !FUNC19(mode, "hdq")) {
		hdq_data->mode = 0;
		omap_w1_master.search = omap_w1_search_bus;
	} else {
		hdq_data->mode = 1;
		omap_w1_master.triplet = omap_w1_triplet;
	}

	omap_w1_master.data = hdq_data;

	ret = FUNC20(&omap_w1_master);
	if (ret) {
		FUNC3(&pdev->dev, "Failure in registering w1 master\n");
		goto err_w1;
	}

	return 0;

err_irq:
	FUNC17(&pdev->dev);
err_w1:
	FUNC14(&pdev->dev);

	return ret;
}
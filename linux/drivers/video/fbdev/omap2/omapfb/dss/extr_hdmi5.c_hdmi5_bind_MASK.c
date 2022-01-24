#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  pll; int /*<<< orphan*/  wp; int /*<<< orphan*/  core; int /*<<< orphan*/  phy; int /*<<< orphan*/  audio_playing_lock; int /*<<< orphan*/  lock; struct platform_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_4__*) ; 
 int FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 TYPE_4__ hdmi ; 
 int FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  hdmi_dump_regs ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  hdmi_irq_handler ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC18 (struct device*) ; 

__attribute__((used)) static int FUNC19(struct device *dev, struct device *master, void *data)
{
	struct platform_device *pdev = FUNC18(dev);
	int r;
	int irq;

	hdmi.pdev = pdev;
	FUNC1(&pdev->dev, &hdmi);

	FUNC13(&hdmi.lock);
	FUNC17(&hdmi.audio_playing_lock);

	if (pdev->dev.of_node) {
		r = FUNC10(pdev);
		if (r)
			return r;
	}

	r = FUNC12(pdev, &hdmi.wp);
	if (r)
		return r;

	r = FUNC8(pdev, &hdmi.pll, &hdmi.wp);
	if (r)
		return r;

	r = FUNC7(pdev, &hdmi.phy);
	if (r)
		goto err;

	r = FUNC4(pdev, &hdmi.core);
	if (r)
		goto err;

	irq = FUNC14(pdev, 0);
	if (irq < 0) {
		FUNC0("platform_get_irq failed\n");
		r = -ENODEV;
		goto err;
	}

	r = FUNC2(&pdev->dev, irq,
			NULL, hdmi_irq_handler,
			IRQF_ONESHOT, "OMAP HDMI", &hdmi.wp);
	if (r) {
		FUNC0("HDMI IRQ request failed\n");
		goto err;
	}

	FUNC16(&pdev->dev);

	FUNC6(pdev);

	r = FUNC5(&pdev->dev);
	if (r) {
		FUNC0("Registering HDMI audio failed %d\n", r);
		FUNC11(pdev);
		FUNC15(&pdev->dev);
		return r;
	}

	FUNC3("hdmi", hdmi_dump_regs);

	return 0;
err:
	FUNC9(&hdmi.pll);
	return r;
}
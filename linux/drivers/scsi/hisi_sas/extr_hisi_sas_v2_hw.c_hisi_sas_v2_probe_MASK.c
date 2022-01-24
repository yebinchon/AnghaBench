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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hisi_sas_v2_hw ; 
 int FUNC2 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	/*
	 * Check if we should defer the probe before we probe the
	 * upper layer, as it's hard to defer later on.
	 */
	int ret = FUNC2(pdev, 0);

	if (ret < 0) {
		if (ret != -EPROBE_DEFER)
			FUNC0(&pdev->dev, "cannot obtain irq\n");
		return ret;
	}

	return FUNC1(pdev, &hisi_sas_v2_hw);
}
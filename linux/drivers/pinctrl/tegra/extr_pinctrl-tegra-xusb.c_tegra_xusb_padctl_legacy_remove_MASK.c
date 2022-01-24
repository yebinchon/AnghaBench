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
struct tegra_xusb_padctl {int /*<<< orphan*/  rst; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct tegra_xusb_padctl* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct platform_device *pdev)
{
	struct tegra_xusb_padctl *padctl = FUNC1(pdev);
	int err;

	err = FUNC2(padctl->rst);
	if (err < 0)
		FUNC0(&pdev->dev, "failed to assert reset: %d\n", err);

	return err;
}
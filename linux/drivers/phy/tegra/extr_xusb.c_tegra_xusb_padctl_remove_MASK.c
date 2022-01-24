#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tegra_xusb_padctl {TYPE_2__* soc; int /*<<< orphan*/  rst; int /*<<< orphan*/  supplies; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_1__* ops; int /*<<< orphan*/  num_supplies; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* remove ) (struct tegra_xusb_padctl*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct tegra_xusb_padctl* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  FUNC5 (struct tegra_xusb_padctl*) ; 
 int /*<<< orphan*/  FUNC6 (struct tegra_xusb_padctl*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct tegra_xusb_padctl *padctl = FUNC1(pdev);
	int err;

	FUNC6(padctl);
	FUNC5(padctl);

	err = FUNC2(padctl->soc->num_supplies,
				     padctl->supplies);
	if (err < 0)
		FUNC0(&pdev->dev, "failed to disable supplies: %d\n", err);

	err = FUNC3(padctl->rst);
	if (err < 0)
		FUNC0(&pdev->dev, "failed to assert reset: %d\n", err);

	padctl->soc->ops->remove(padctl);

	return err;
}
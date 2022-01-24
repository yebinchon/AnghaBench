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
struct TYPE_3__ {int /*<<< orphan*/  of_node; struct imx_pgc_domain* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imx_pgc_domain {int /*<<< orphan*/  genpd; TYPE_1__* dev; scalar_t__ voltage; int /*<<< orphan*/  regulator; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int FUNC4 (struct imx_pgc_domain*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_pgc_domain*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct imx_pgc_domain *domain = pdev->dev.platform_data;
	int ret;

	domain->dev = &pdev->dev;

	domain->regulator = FUNC3(domain->dev, "power");
	if (FUNC0(domain->regulator)) {
		if (FUNC1(domain->regulator) != -ENODEV) {
			if (FUNC1(domain->regulator) != -EPROBE_DEFER)
				FUNC2(domain->dev, "Failed to get domain's regulator\n");
			return FUNC1(domain->regulator);
		}
	} else if (domain->voltage) {
		FUNC9(domain->regulator,
				      domain->voltage, domain->voltage);
	}

	ret = FUNC4(domain);
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC2(domain->dev, "Failed to get domain's clocks\n");
		return ret;
	}

	ret = FUNC7(&domain->genpd, NULL, true);
	if (ret) {
		FUNC2(domain->dev, "Failed to init power domain\n");
		FUNC5(domain);
		return ret;
	}

	ret = FUNC6(domain->dev->of_node,
					   &domain->genpd);
	if (ret) {
		FUNC2(domain->dev, "Failed to add genpd provider\n");
		FUNC8(&domain->genpd);
		FUNC5(domain);
	}

	return ret;
}
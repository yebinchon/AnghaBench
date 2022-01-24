#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct meson_ee_pwrc_domain_data {int count; int /*<<< orphan*/ * domains; } ;
struct meson_ee_pwrc_domain {int /*<<< orphan*/  base; int /*<<< orphan*/  desc; } ;
struct TYPE_6__ {int num_domains; int /*<<< orphan*/ ** domains; } ;
struct meson_ee_pwrc {TYPE_1__ xlate; struct meson_ee_pwrc_domain* domains; struct regmap* regmap_hhi; struct regmap* regmap_ao; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 void* FUNC3 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct meson_ee_pwrc* FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct platform_device*,struct meson_ee_pwrc*,struct meson_ee_pwrc_domain*) ; 
 struct meson_ee_pwrc_domain_data* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct meson_ee_pwrc*) ; 
 struct regmap* FUNC11 (int /*<<< orphan*/ ) ; 
 struct regmap* FUNC12 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	const struct meson_ee_pwrc_domain_data *match;
	struct regmap *regmap_ao, *regmap_hhi;
	struct meson_ee_pwrc *pwrc;
	int i, ret;

	match = FUNC7(&pdev->dev);
	if (!match) {
		FUNC2(&pdev->dev, "failed to get match data\n");
		return -ENODEV;
	}

	pwrc = FUNC4(&pdev->dev, sizeof(*pwrc), GFP_KERNEL);
	if (!pwrc)
		return -ENOMEM;

	pwrc->xlate.domains = FUNC3(&pdev->dev, match->count,
					   sizeof(*pwrc->xlate.domains),
					   GFP_KERNEL);
	if (!pwrc->xlate.domains)
		return -ENOMEM;

	pwrc->domains = FUNC3(&pdev->dev, match->count,
				     sizeof(*pwrc->domains), GFP_KERNEL);
	if (!pwrc->domains)
		return -ENOMEM;

	pwrc->xlate.num_domains = match->count;

	regmap_hhi = FUNC11(FUNC9(pdev->dev.of_node));
	if (FUNC0(regmap_hhi)) {
		FUNC2(&pdev->dev, "failed to get HHI regmap\n");
		return FUNC1(regmap_hhi);
	}

	regmap_ao = FUNC12(pdev->dev.of_node,
						    "amlogic,ao-sysctrl");
	if (FUNC0(regmap_ao)) {
		FUNC2(&pdev->dev, "failed to get AO regmap\n");
		return FUNC1(regmap_ao);
	}

	pwrc->regmap_ao = regmap_ao;
	pwrc->regmap_hhi = regmap_hhi;

	FUNC10(pdev, pwrc);

	for (i = 0 ; i < match->count ; ++i) {
		struct meson_ee_pwrc_domain *dom = &pwrc->domains[i];

		FUNC5(&dom->desc, &match->domains[i], sizeof(dom->desc));

		ret = FUNC6(pdev, pwrc, dom);
		if (ret)
			return ret;

		pwrc->xlate.domains[i] = &dom->base;
	}

	FUNC8(pdev->dev.of_node, &pwrc->xlate);

	return 0;
}
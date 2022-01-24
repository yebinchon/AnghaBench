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
struct npcm7xx_pinctrl {int /*<<< orphan*/ * dev; int /*<<< orphan*/  pctldev; int /*<<< orphan*/  gcr_regmap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct npcm7xx_pinctrl*) ; 
 struct npcm7xx_pinctrl* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct npcm7xx_pinctrl*) ; 
 int FUNC6 (struct npcm7xx_pinctrl*) ; 
 int FUNC7 (struct npcm7xx_pinctrl*) ; 
 int /*<<< orphan*/  npcm7xx_pinctrl_desc ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct npcm7xx_pinctrl *pctrl;
	int ret;

	pctrl = FUNC4(&pdev->dev, sizeof(*pctrl), GFP_KERNEL);
	if (!pctrl)
		return -ENOMEM;

	pctrl->dev = &pdev->dev;
	FUNC3(&pdev->dev, pctrl);

	pctrl->gcr_regmap =
		FUNC9("nuvoton,npcm750-gcr");
	if (FUNC0(pctrl->gcr_regmap)) {
		FUNC2(pctrl->dev, "didn't find nuvoton,npcm750-gcr\n");
		return FUNC1(pctrl->gcr_regmap);
	}

	ret = FUNC6(pctrl);
	if (ret < 0) {
		FUNC2(pctrl->dev, "Failed to gpio dt-binding %u\n", ret);
		return ret;
	}

	pctrl->pctldev = FUNC5(&pdev->dev,
					       &npcm7xx_pinctrl_desc, pctrl);
	if (FUNC0(pctrl->pctldev)) {
		FUNC2(&pdev->dev, "Failed to register pinctrl device\n");
		return FUNC1(pctrl->pctldev);
	}

	ret = FUNC7(pctrl);
	if (ret < 0) {
		FUNC2(pctrl->dev, "Failed to register gpio %u\n", ret);
		return ret;
	}

	FUNC8("NPCM7xx Pinctrl driver probed\n");
	return 0;
}
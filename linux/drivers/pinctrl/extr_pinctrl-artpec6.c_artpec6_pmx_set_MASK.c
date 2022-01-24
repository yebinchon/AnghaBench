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
struct pinctrl_dev {int dummy; } ;
struct artpec6_pmx {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct pinctrl_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct pinctrl_dev*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct artpec6_pmx* FUNC4 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC5(struct pinctrl_dev *pctldev,
			   unsigned int function,
			   unsigned int group)
{
	struct artpec6_pmx *pmx = FUNC4(pctldev);

	FUNC3(pmx->dev, "enabling %s function for pin group %s\n",
		FUNC1(pctldev, function),
		FUNC0(pctldev, group));

	FUNC2(pctldev, function, group, true);

	return 0;
}
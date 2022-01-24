#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int /*<<< orphan*/  gcr_regmap; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  npins; int /*<<< orphan*/  pins; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* npcm7xx_groups ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct npcm7xx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev,
				  unsigned int function,
				  unsigned int group)
{
	struct npcm7xx_pinctrl *npcm = FUNC2(pctldev);

	FUNC0(npcm->dev, "set_mux: %d, %d[%s]\n", function, group,
		npcm7xx_groups[group].name);

	FUNC1(npcm->gcr_regmap, npcm7xx_groups[group].pins,
			npcm7xx_groups[group].npins, group);

	return 0;
}
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
struct npcm7xx_pinctrl {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  npcm7xx_groups ; 
 struct npcm7xx_pinctrl* FUNC2 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC3(struct pinctrl_dev *pctldev)
{
	struct npcm7xx_pinctrl *npcm = FUNC2(pctldev);

	FUNC1(npcm->dev, "group size: %d\n", FUNC0(npcm7xx_groups));
	return FUNC0(npcm7xx_groups);
}
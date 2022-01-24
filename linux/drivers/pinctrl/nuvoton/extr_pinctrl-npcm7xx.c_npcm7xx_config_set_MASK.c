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
struct npcm7xx_pinctrl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct npcm7xx_pinctrl*,unsigned int,int /*<<< orphan*/ ) ; 
 struct npcm7xx_pinctrl* FUNC1 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC2(struct pinctrl_dev *pctldev, unsigned int pin,
			      unsigned long *configs, unsigned int num_configs)
{
	struct npcm7xx_pinctrl *npcm = FUNC1(pctldev);
	int rc;

	while (num_configs--) {
		rc = FUNC0(npcm, pin, *configs++);
		if (rc)
			return rc;
	}

	return 0;
}
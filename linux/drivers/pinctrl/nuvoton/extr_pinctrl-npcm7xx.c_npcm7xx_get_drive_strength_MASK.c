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
typedef  int u32 ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {struct npcm7xx_gpio* gpio_bank; } ;
struct TYPE_3__ {unsigned int ngpio; int /*<<< orphan*/  parent; } ;
struct npcm7xx_gpio {TYPE_1__ gc; scalar_t__ base; } ;
struct TYPE_4__ {int flag; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int DRIVE_STRENGTH_MASK ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int EINVAL ; 
 unsigned int NPCM7XX_GPIO_PER_BANK ; 
 scalar_t__ NPCM7XX_GP_N_ODSC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,int,int) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 TYPE_2__* pincfg ; 
 struct npcm7xx_pinctrl* FUNC5 (struct pinctrl_dev*) ; 

__attribute__((used)) static int FUNC6(struct pinctrl_dev *pctldev,
				      unsigned int pin)
{
	struct npcm7xx_pinctrl *npcm = FUNC5(pctldev);
	struct npcm7xx_gpio *bank =
		&npcm->gpio_bank[pin / NPCM7XX_GPIO_PER_BANK];
	int gpio = (pin % bank->gc.ngpio);
	unsigned long pinmask = FUNC0(gpio);
	u32 ds = 0;
	int flg, val;

	flg = pincfg[pin].flag;
	if (flg & DRIVE_STRENGTH_MASK) {
		/* Get standard reading */
		val = FUNC4(bank->base + NPCM7XX_GP_N_ODSC)
		& pinmask;
		ds = val ? FUNC1(flg) : FUNC2(flg);
		FUNC3(bank->gc.parent,
			"pin %d strength %d = %d\n", pin, val, ds);
		return ds;
	}

	return -EINVAL;
}
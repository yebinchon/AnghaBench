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
struct regmap {int dummy; } ;
struct TYPE_3__ {unsigned int ngpio; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_1__ gc; } ;
struct TYPE_4__ {int flag; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NPCM7XX_GCR_SRCNT ; 
 scalar_t__ NPCM7XX_GP_N_OSRC ; 
 int SLEW ; 
 int SLEWLPC ; 
 int SRCNT_ESPI ; 
 unsigned long FUNC1 (scalar_t__) ; 
 TYPE_2__* pincfg ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct npcm7xx_gpio *bank,
				 struct regmap *gcr_regmap, unsigned int pin)
{
	u32 val;
	int gpio = (pin % bank->gc.ngpio);
	unsigned long pinmask = FUNC0(gpio);

	if (pincfg[pin].flag & SLEW)
		return FUNC1(bank->base + NPCM7XX_GP_N_OSRC)
		& pinmask;
	/* LPC Slew rate in SRCNT register */
	if (pincfg[pin].flag & SLEWLPC) {
		FUNC2(gcr_regmap, NPCM7XX_GCR_SRCNT, &val);
		return !!(val & SRCNT_ESPI);
	}

	return -EINVAL;
}
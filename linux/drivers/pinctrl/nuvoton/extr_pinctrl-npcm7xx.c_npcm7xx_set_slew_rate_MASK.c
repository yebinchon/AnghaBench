#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_5__ {unsigned int ngpio; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_2__ gc; } ;
struct TYPE_4__ {int flag; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  NPCM7XX_GCR_SRCNT ; 
 scalar_t__ NPCM7XX_GP_N_OSRC ; 
 int SLEW ; 
 int SLEWLPC ; 
 int /*<<< orphan*/  SRCNT_ESPI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,int) ; 
 TYPE_1__* pincfg ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct npcm7xx_gpio *bank,
				 struct regmap *gcr_regmap, unsigned int pin,
				 int arg)
{
	int gpio = FUNC0(pin % bank->gc.ngpio);

	if (pincfg[pin].flag & SLEW) {
		switch (arg) {
		case 0:
			FUNC1(&bank->gc, bank->base + NPCM7XX_GP_N_OSRC,
				      gpio);
			return 0;
		case 1:
			FUNC2(&bank->gc, bank->base + NPCM7XX_GP_N_OSRC,
				      gpio);
			return 0;
		default:
			return -EINVAL;
		}
	}
	/* LPC Slew rate in SRCNT register */
	if (pincfg[pin].flag & SLEWLPC) {
		switch (arg) {
		case 0:
			FUNC3(gcr_regmap, NPCM7XX_GCR_SRCNT,
					   SRCNT_ESPI, 0);
			return 0;
		case 1:
			FUNC3(gcr_regmap, NPCM7XX_GCR_SRCNT,
					   SRCNT_ESPI, SRCNT_ESPI);
			return 0;
		default:
			return -EINVAL;
		}
	}

	return -EINVAL;
}
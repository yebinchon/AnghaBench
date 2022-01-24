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
typedef  size_t u8 ;
typedef  scalar_t__ u16 ;
struct prcm_gpiocr_altcx_pin_desc {unsigned int pin; TYPE_2__* altcx; } ;
struct nmk_pinctrl {scalar_t__ prcm_base; int /*<<< orphan*/  dev; TYPE_1__* soc; } ;
struct TYPE_4__ {int used; size_t reg_index; size_t control_bit; } ;
struct TYPE_3__ {int npins_altcx; scalar_t__* prcm_gpiocr_registers; struct prcm_gpiocr_altcx_pin_desc* altcx_pins; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 unsigned int PRCM_IDX_GPIOCR_ALTC_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int) ; 
 int FUNC5 (scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct nmk_pinctrl *npct,
	unsigned offset, unsigned alt_num)
{
	int i;
	u16 reg;
	u8 bit;
	u8 alt_index;
	const struct prcm_gpiocr_altcx_pin_desc *pin_desc;
	const u16 *gpiocr_regs;

	if (!npct->prcm_base)
		return;

	if (alt_num > PRCM_IDX_GPIOCR_ALTC_MAX) {
		FUNC2(npct->dev, "PRCM GPIOCR: alternate-C%i is invalid\n",
			alt_num);
		return;
	}

	for (i = 0 ; i < npct->soc->npins_altcx ; i++) {
		if (npct->soc->altcx_pins[i].pin == offset)
			break;
	}
	if (i == npct->soc->npins_altcx) {
		FUNC1(npct->dev, "PRCM GPIOCR: pin %i is not found\n",
			offset);
		return;
	}

	pin_desc = npct->soc->altcx_pins + i;
	gpiocr_regs = npct->soc->prcm_gpiocr_registers;

	/*
	 * If alt_num is NULL, just clear current ALTCx selection
	 * to make sure we come back to a pure ALTC selection
	 */
	if (!alt_num) {
		for (i = 0 ; i < PRCM_IDX_GPIOCR_ALTC_MAX ; i++) {
			if (pin_desc->altcx[i].used == true) {
				reg = gpiocr_regs[pin_desc->altcx[i].reg_index];
				bit = pin_desc->altcx[i].control_bit;
				if (FUNC5(npct->prcm_base + reg) & FUNC0(bit)) {
					FUNC4(npct->prcm_base + reg, FUNC0(bit), 0);
					FUNC1(npct->dev,
						"PRCM GPIOCR: pin %i: alternate-C%i has been disabled\n",
						offset, i+1);
				}
			}
		}
		return;
	}

	alt_index = alt_num - 1;
	if (pin_desc->altcx[alt_index].used == false) {
		FUNC3(npct->dev,
			"PRCM GPIOCR: pin %i: alternate-C%i does not exist\n",
			offset, alt_num);
		return;
	}

	/*
	 * Check if any other ALTCx functions are activated on this pin
	 * and disable it first.
	 */
	for (i = 0 ; i < PRCM_IDX_GPIOCR_ALTC_MAX ; i++) {
		if (i == alt_index)
			continue;
		if (pin_desc->altcx[i].used == true) {
			reg = gpiocr_regs[pin_desc->altcx[i].reg_index];
			bit = pin_desc->altcx[i].control_bit;
			if (FUNC5(npct->prcm_base + reg) & FUNC0(bit)) {
				FUNC4(npct->prcm_base + reg, FUNC0(bit), 0);
				FUNC1(npct->dev,
					"PRCM GPIOCR: pin %i: alternate-C%i has been disabled\n",
					offset, i+1);
			}
		}
	}

	reg = gpiocr_regs[pin_desc->altcx[alt_index].reg_index];
	bit = pin_desc->altcx[alt_index].control_bit;
	FUNC1(npct->dev, "PRCM GPIOCR: pin %i: alternate-C%i has been selected\n",
		offset, alt_index+1);
	FUNC4(npct->prcm_base + reg, FUNC0(bit), FUNC0(bit));
}
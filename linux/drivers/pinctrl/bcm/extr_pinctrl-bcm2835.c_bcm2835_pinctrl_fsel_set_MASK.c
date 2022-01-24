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
typedef  int u32 ;
struct bcm2835_pinctrl {int /*<<< orphan*/  dev; } ;
typedef  enum bcm2835_fsel { ____Placeholder_bcm2835_fsel } bcm2835_fsel ;

/* Variables and functions */
 int BCM2835_FSEL_GPIO_IN ; 
 int BCM2835_FSEL_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/ * bcm2835_functions ; 
 int FUNC2 (struct bcm2835_pinctrl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_pinctrl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC5(
		struct bcm2835_pinctrl *pc, unsigned pin,
		enum bcm2835_fsel fsel)
{
	u32 val = FUNC2(pc, FUNC0(pin));
	enum bcm2835_fsel cur = (val >> FUNC1(pin)) & BCM2835_FSEL_MASK;

	FUNC4(pc->dev, "read %08x (%u => %s)\n", val, pin,
			bcm2835_functions[cur]);

	if (cur == fsel)
		return;

	if (cur != BCM2835_FSEL_GPIO_IN && fsel != BCM2835_FSEL_GPIO_IN) {
		/* always transition through GPIO_IN */
		val &= ~(BCM2835_FSEL_MASK << FUNC1(pin));
		val |= BCM2835_FSEL_GPIO_IN << FUNC1(pin);

		FUNC4(pc->dev, "trans %08x (%u <= %s)\n", val, pin,
				bcm2835_functions[BCM2835_FSEL_GPIO_IN]);
		FUNC3(pc, FUNC0(pin), val);
	}

	val &= ~(BCM2835_FSEL_MASK << FUNC1(pin));
	val |= fsel << FUNC1(pin);

	FUNC4(pc->dev, "write %08x (%u <= %s)\n", val, pin,
			bcm2835_functions[fsel]);
	FUNC3(pc, FUNC0(pin), val);
}
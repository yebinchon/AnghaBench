#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  domain; int /*<<< orphan*/  init_valid_mask; } ;
struct gpio_chip {int base; TYPE_2__ irq; int /*<<< orphan*/  parent; int /*<<< orphan*/  label; scalar_t__ ngpio; } ;
struct TYPE_7__ {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  irq_ack; int /*<<< orphan*/  irq_startup; } ;
struct chv_pinctrl {TYPE_3__ irqchip; int /*<<< orphan*/  dev; scalar_t__ regs; struct chv_community* community; struct gpio_chip chip; } ;
struct chv_gpio_pinrange {scalar_t__ npins; int /*<<< orphan*/  base; } ;
struct chv_community {int npins; int ngpio_ranges; struct chv_gpio_pinrange* gpio_ranges; int /*<<< orphan*/  nirqs; TYPE_1__* pins; } ;
struct TYPE_5__ {scalar_t__ number; } ;

/* Variables and functions */
 scalar_t__ CHV_INTMASK ; 
 scalar_t__ CHV_INTSTAT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQCHIP_SKIP_SET_WAKE ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 struct gpio_chip chv_gpio_chip ; 
 int /*<<< orphan*/  chv_gpio_irq_ack ; 
 int /*<<< orphan*/  chv_gpio_irq_handler ; 
 int /*<<< orphan*/  chv_gpio_irq_mask ; 
 int /*<<< orphan*/  chv_gpio_irq_startup ; 
 int /*<<< orphan*/  chv_gpio_irq_type ; 
 int /*<<< orphan*/  chv_gpio_irq_unmask ; 
 int /*<<< orphan*/  chv_init_irq_valid_mask ; 
 int /*<<< orphan*/  chv_no_valid_mask ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct gpio_chip*,struct chv_pinctrl*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct gpio_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct gpio_chip*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gpio_chip*,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_bad_irq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct chv_pinctrl *pctrl, int irq)
{
	const struct chv_gpio_pinrange *range;
	struct gpio_chip *chip = &pctrl->chip;
	bool need_valid_mask = !FUNC6(chv_no_valid_mask);
	const struct chv_community *community = pctrl->community;
	int ret, i, irq_base;

	*chip = chv_gpio_chip;

	chip->ngpio = community->pins[community->npins - 1].number + 1;
	chip->label = FUNC3(pctrl->dev);
	chip->parent = pctrl->dev;
	chip->base = -1;
	if (need_valid_mask)
		chip->irq.init_valid_mask = chv_init_irq_valid_mask;

	ret = FUNC4(pctrl->dev, chip, pctrl);
	if (ret) {
		FUNC2(pctrl->dev, "Failed to register gpiochip\n");
		return ret;
	}

	for (i = 0; i < community->ngpio_ranges; i++) {
		range = &community->gpio_ranges[i];
		ret = FUNC7(chip, FUNC3(pctrl->dev),
					     range->base, range->base,
					     range->npins);
		if (ret) {
			FUNC2(pctrl->dev, "failed to add GPIO pin range\n");
			return ret;
		}
	}

	/*
	 * The same set of machines in chv_no_valid_mask[] have incorrectly
	 * configured GPIOs that generate spurious interrupts so we use
	 * this same list to apply another quirk for them.
	 *
	 * See also https://bugzilla.kernel.org/show_bug.cgi?id=197953.
	 */
	if (!need_valid_mask) {
		/*
		 * Mask all interrupts the community is able to generate
		 * but leave the ones that can only generate GPEs unmasked.
		 */
		FUNC1(FUNC0(31, pctrl->community->nirqs),
			   pctrl->regs + CHV_INTMASK);
	}

	/* Clear all interrupts */
	FUNC1(0xffff, pctrl->regs + CHV_INTSTAT);

	if (!need_valid_mask) {
		irq_base = FUNC5(pctrl->dev, -1, 0,
						community->npins, NUMA_NO_NODE);
		if (irq_base < 0) {
			FUNC2(pctrl->dev, "Failed to allocate IRQ numbers\n");
			return irq_base;
		}
	}

	pctrl->irqchip.name = "chv-gpio";
	pctrl->irqchip.irq_startup = chv_gpio_irq_startup;
	pctrl->irqchip.irq_ack = chv_gpio_irq_ack;
	pctrl->irqchip.irq_mask = chv_gpio_irq_mask;
	pctrl->irqchip.irq_unmask = chv_gpio_irq_unmask;
	pctrl->irqchip.irq_set_type = chv_gpio_irq_type;
	pctrl->irqchip.flags = IRQCHIP_SKIP_SET_WAKE;

	ret = FUNC8(chip, &pctrl->irqchip, 0,
				   handle_bad_irq, IRQ_TYPE_NONE);
	if (ret) {
		FUNC2(pctrl->dev, "failed to add IRQ chip\n");
		return ret;
	}

	if (!need_valid_mask) {
		for (i = 0; i < community->ngpio_ranges; i++) {
			range = &community->gpio_ranges[i];

			FUNC10(chip->irq.domain, irq_base,
						  range->base, range->npins);
			irq_base += range->npins;
		}
	}

	FUNC9(chip, &pctrl->irqchip, irq,
				     chv_gpio_irq_handler);
	return 0;
}
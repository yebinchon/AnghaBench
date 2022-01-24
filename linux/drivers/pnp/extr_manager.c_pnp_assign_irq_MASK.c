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
struct resource {int start; int flags; int end; } ;
struct TYPE_2__ {int /*<<< orphan*/  bits; } ;
struct pnp_irq {int flags; TYPE_1__ map; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int IORESOURCE_AUTO ; 
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int IORESOURCE_IRQ_OPTIONAL ; 
 int PNP_IRQ_NR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*,int,int) ; 
 scalar_t__ FUNC3 (struct pnp_dev*,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct resource* FUNC5 (struct pnp_dev*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (unsigned short,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pnp_dev *dev, struct pnp_irq *rule, int idx)
{
	struct resource *res, local_res;
	int i;

	/* IRQ priority: this table is good for i386 */
	static unsigned short xtab[16] = {
		5, 10, 11, 12, 9, 14, 15, 7, 3, 4, 13, 0, 1, 6, 8, 2
	};

	res = FUNC5(dev, rule->flags, IORESOURCE_IRQ, idx);
	if (res) {
		FUNC4(&dev->dev, "  irq %d already set to %d flags %#lx\n",
			idx, (int) res->start, res->flags);
		return 0;
	}

	res = &local_res;
	res->flags = rule->flags | IORESOURCE_AUTO;
	res->start = -1;
	res->end = -1;

	if (FUNC0(rule->map.bits, PNP_IRQ_NR)) {
		res->flags |= IORESOURCE_DISABLED;
		FUNC4(&dev->dev, "  irq %d disabled\n", idx);
		goto __add;
	}

	/* TBD: need check for >16 IRQ */
	res->start = FUNC1(rule->map.bits, PNP_IRQ_NR, 16);
	if (res->start < PNP_IRQ_NR) {
		res->end = res->start;
		goto __add;
	}
	for (i = 0; i < 16; i++) {
		if (FUNC6(xtab[i], rule->map.bits)) {
			res->start = res->end = xtab[i];
			if (FUNC3(dev, res))
				goto __add;
		}
	}

	if (rule->flags & IORESOURCE_IRQ_OPTIONAL) {
		res->start = -1;
		res->end = -1;
		res->flags |= IORESOURCE_DISABLED;
		FUNC4(&dev->dev, "  irq %d disabled (optional)\n", idx);
		goto __add;
	}

	FUNC4(&dev->dev, "  couldn't assign irq %d\n", idx);
	return -EBUSY;

__add:
	FUNC2(dev, res->start, res->flags);
	return 0;
}
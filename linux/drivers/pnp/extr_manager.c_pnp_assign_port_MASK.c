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
struct resource {scalar_t__ start; scalar_t__ end; int flags; } ;
struct pnp_port {int flags; scalar_t__ size; scalar_t__ min; scalar_t__ align; scalar_t__ max; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int IORESOURCE_AUTO ; 
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  FUNC0 (struct pnp_dev*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_dev*,struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 struct resource* FUNC3 (struct pnp_dev*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct pnp_dev *dev, struct pnp_port *rule, int idx)
{
	struct resource *res, local_res;

	res = FUNC3(dev, rule->flags, IORESOURCE_IO, idx);
	if (res) {
		FUNC2(&dev->dev, "  io %d already set to %#llx-%#llx "
			"flags %#lx\n", idx, (unsigned long long) res->start,
			(unsigned long long) res->end, res->flags);
		return 0;
	}

	res = &local_res;
	res->flags = rule->flags | IORESOURCE_AUTO;
	res->start = 0;
	res->end = 0;

	if (!rule->size) {
		res->flags |= IORESOURCE_DISABLED;
		FUNC2(&dev->dev, "  io %d disabled\n", idx);
		goto __add;
	}

	res->start = rule->min;
	res->end = res->start + rule->size - 1;

	while (!FUNC1(dev, res)) {
		res->start += rule->align;
		res->end = res->start + rule->size - 1;
		if (res->start > rule->max || !rule->align) {
			FUNC2(&dev->dev, "  couldn't assign io %d "
				"(min %#llx max %#llx)\n", idx,
				(unsigned long long) rule->min,
				(unsigned long long) rule->max);
			return -EBUSY;
		}
	}

__add:
	FUNC0(dev, res->start, res->end, res->flags);
	return 0;
}
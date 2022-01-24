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
struct resource {int start; int end; int flags; char const* name; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct device_node*,int) ; 
 char const* FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int,char const**) ; 

int FUNC6(struct device_node *dev, int index, struct resource *r)
{
	int irq = FUNC3(dev, index);

	if (irq < 0)
		return irq;

	/* Only dereference the resource if both the
	 * resource and the irq are valid. */
	if (r && irq) {
		const char *name = NULL;

		FUNC2(r, 0, sizeof(*r));
		/*
		 * Get optional "interrupt-names" property to add a name
		 * to the resource.
		 */
		FUNC5(dev, "interrupt-names", index,
					      &name);

		r->start = r->end = irq;
		r->flags = IORESOURCE_IRQ | FUNC1(FUNC0(irq));
		r->name = name ? name : FUNC4(dev);
	}

	return irq;
}
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
struct resource {int flags; int start; int end; } ;
struct pnp_resource {struct resource res; } ;
struct pnp_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int IORESOURCE_IRQ ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,struct resource*) ; 
 struct pnp_resource* FUNC2 (struct pnp_dev*) ; 

struct pnp_resource *FUNC3(struct pnp_dev *dev, int irq,
					  int flags)
{
	struct pnp_resource *pnp_res;
	struct resource *res;

	pnp_res = FUNC2(dev);
	if (!pnp_res) {
		FUNC0(&dev->dev, "can't add resource for IRQ %d\n", irq);
		return NULL;
	}

	res = &pnp_res->res;
	res->flags = IORESOURCE_IRQ | flags;
	res->start = irq;
	res->end = irq;

	FUNC1(KERN_DEBUG, &dev->dev, "%pR\n", res);
	return pnp_res;
}
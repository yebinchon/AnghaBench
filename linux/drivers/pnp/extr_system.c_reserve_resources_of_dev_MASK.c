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
struct pnp_dev {int dummy; } ;

/* Variables and functions */
 int IORESOURCE_DISABLED ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct resource* FUNC0 (struct pnp_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_dev*,struct resource*,int) ; 

__attribute__((used)) static void FUNC2(struct pnp_dev *dev)
{
	struct resource *res;
	int i;

	for (i = 0; (res = FUNC0(dev, IORESOURCE_IO, i)); i++) {
		if (res->flags & IORESOURCE_DISABLED)
			continue;
		if (res->start == 0)
			continue;	/* disabled */
		if (res->start < 0x100)
			/*
			 * Below 0x100 is only standard PC hardware
			 * (pics, kbd, timer, dma, ...)
			 * We should not get resource conflicts there,
			 * and the kernel reserves these anyway
			 * (see arch/i386/kernel/setup.c).
			 * So, do nothing
			 */
			continue;
		if (res->end < res->start)
			continue;	/* invalid */

		FUNC1(dev, res, 1);
	}

	for (i = 0; (res = FUNC0(dev, IORESOURCE_MEM, i)); i++) {
		if (res->flags & IORESOURCE_DISABLED)
			continue;

		FUNC1(dev, res, 0);
	}
}
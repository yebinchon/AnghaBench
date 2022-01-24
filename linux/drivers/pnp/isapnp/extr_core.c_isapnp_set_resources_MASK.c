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
struct resource {int start; } ;
struct pnp_dev {int active; int /*<<< orphan*/  number; int /*<<< orphan*/  dev; TYPE_1__* card; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_DMA ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ ISAPNP_CFG_DMA ; 
 scalar_t__ ISAPNP_CFG_IRQ ; 
 scalar_t__ ISAPNP_CFG_MEM ; 
 scalar_t__ ISAPNP_CFG_PORT ; 
 int ISAPNP_MAX_DMA ; 
 int ISAPNP_MAX_IRQ ; 
 int ISAPNP_MAX_MEM ; 
 int ISAPNP_MAX_PORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct resource* FUNC6 (struct pnp_dev*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct resource*) ; 

__attribute__((used)) static int FUNC8(struct pnp_dev *dev)
{
	struct resource *res;
	int tmp;

	FUNC5(&dev->dev, "set resources\n");
	FUNC1(dev->card->number, dev->number);
	dev->active = 1;
	for (tmp = 0; tmp < ISAPNP_MAX_PORT; tmp++) {
		res = FUNC6(dev, IORESOURCE_IO, tmp);
		if (FUNC7(res)) {
			FUNC5(&dev->dev, "  set io  %d to %#llx\n",
				tmp, (unsigned long long) res->start);
			FUNC4(ISAPNP_CFG_PORT + (tmp << 1),
					  res->start);
		}
	}
	for (tmp = 0; tmp < ISAPNP_MAX_IRQ; tmp++) {
		res = FUNC6(dev, IORESOURCE_IRQ, tmp);
		if (FUNC7(res)) {
			int irq = res->start;
			if (irq == 2)
				irq = 9;
			FUNC5(&dev->dev, "  set irq %d to %d\n", tmp, irq);
			FUNC3(ISAPNP_CFG_IRQ + (tmp << 1), irq);
		}
	}
	for (tmp = 0; tmp < ISAPNP_MAX_DMA; tmp++) {
		res = FUNC6(dev, IORESOURCE_DMA, tmp);
		if (FUNC7(res)) {
			FUNC5(&dev->dev, "  set dma %d to %lld\n",
				tmp, (unsigned long long) res->start);
			FUNC3(ISAPNP_CFG_DMA + tmp, res->start);
		}
	}
	for (tmp = 0; tmp < ISAPNP_MAX_MEM; tmp++) {
		res = FUNC6(dev, IORESOURCE_MEM, tmp);
		if (FUNC7(res)) {
			FUNC5(&dev->dev, "  set mem %d to %#llx\n",
				tmp, (unsigned long long) res->start);
			FUNC4(ISAPNP_CFG_MEM + (tmp << 3),
					  (res->start >> 8) & 0xffff);
		}
	}
	/* FIXME: We aren't handling 32bit mems properly here */
	FUNC0(dev->number);
	FUNC2();
	return 0;
}
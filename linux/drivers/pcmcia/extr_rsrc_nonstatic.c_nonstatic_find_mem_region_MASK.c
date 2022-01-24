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
typedef  unsigned long u_long ;
struct socket_data {int /*<<< orphan*/  mem_db; int /*<<< orphan*/  mem_db_valid; } ;
struct resource {int dummy; } ;
struct pcmcia_socket {int features; TYPE_1__* cb_dev; struct socket_data* resource_data; int /*<<< orphan*/  dev; } ;
struct pcmcia_align_data {unsigned long mask; unsigned long offset; int /*<<< orphan*/ * map; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int SS_CAP_PAGE_REGS ; 
 int FUNC0 (int /*<<< orphan*/ *,struct resource*,unsigned long,unsigned long,unsigned long,int,int /*<<< orphan*/ ,struct pcmcia_align_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iomem_resource ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct resource*,unsigned long,int,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pcmcia_align_data*) ; 
 int /*<<< orphan*/  pcmcia_align ; 
 struct resource* FUNC4 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct resource *FUNC5(u_long base, u_long num,
		u_long align, int low, struct pcmcia_socket *s)
{
	struct resource *res = FUNC4(0, num, IORESOURCE_MEM,
						FUNC1(&s->dev));
	struct socket_data *s_data = s->resource_data;
	struct pcmcia_align_data data;
	unsigned long min, max;
	int ret, i, j;

	low = low || !(s->features & SS_CAP_PAGE_REGS);

	data.mask = align - 1;
	data.offset = base & data.mask;

	for (i = 0; i < 2; i++) {
		data.map = &s_data->mem_db_valid;
		if (low) {
			max = 0x100000UL;
			min = base < max ? base : 0;
		} else {
			max = ~0UL;
			min = 0x100000UL + base;
		}

		for (j = 0; j < 2; j++) {
#ifdef CONFIG_PCI
			if (s->cb_dev) {
				ret = pci_bus_alloc_resource(s->cb_dev->bus,
							res, num, 1, min, 0,
							pcmcia_align, &data);
			} else
#endif
			{
				ret = FUNC0(&iomem_resource,
							res, num, min, max, 1,
							pcmcia_align, &data);
			}
			if (ret == 0)
				break;
			data.map = &s_data->mem_db;
		}
		if (ret == 0 || low)
			break;
		low = 1;
	}

	if (ret != 0) {
		FUNC2(res);
		res = NULL;
	}
	return res;
}
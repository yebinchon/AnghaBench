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
struct resource {int start; int /*<<< orphan*/  end; int /*<<< orphan*/  parent; } ;
struct pci_bus {int /*<<< orphan*/  dev; struct resource busn_res; } ;
typedef  int resource_size_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct resource*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct resource*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*,int,int /*<<< orphan*/ ) ; 

int FUNC3(struct pci_bus *b, int bus_max)
{
	struct resource *res = &b->busn_res;
	struct resource old_res = *res;
	resource_size_t size;
	int ret;

	if (res->start > bus_max)
		return -EINVAL;

	size = bus_max - res->start + 1;
	ret = FUNC0(res, res->start, size);
	FUNC1(&b->dev, "busn_res: %pR end %s updated to %02x\n",
			&old_res, ret ? "can not be" : "is", bus_max);

	if (!ret && !res->parent)
		FUNC2(b, res->start, res->end);

	return ret;
}
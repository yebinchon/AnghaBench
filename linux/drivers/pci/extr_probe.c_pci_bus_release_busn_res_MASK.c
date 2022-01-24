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
struct resource {int /*<<< orphan*/  parent; int /*<<< orphan*/  flags; } ;
struct pci_bus {int /*<<< orphan*/  dev; struct resource busn_res; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct resource*,char*) ; 
 int FUNC1 (struct resource*) ; 

void FUNC2(struct pci_bus *b)
{
	struct resource *res = &b->busn_res;
	int ret;

	if (!res->flags || !res->parent)
		return;

	ret = FUNC1(res);
	FUNC0(&b->dev, "busn_res: %pR %s released\n",
			res, ret ? "can not be" : "is");
}
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
struct resource {int /*<<< orphan*/  flags; scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  parent; } ;
struct pci_dev {struct resource* resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_UNSET ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,char*,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 scalar_t__ FUNC2 (struct resource*) ; 

void FUNC3(struct pci_dev *dev, int resno)
{
	struct resource *res = dev->resource + resno;

	FUNC0(dev, "BAR %d: releasing %pR\n", resno, res);

	if (!res->parent)
		return;

	FUNC1(res);
	res->end = FUNC2(res) - 1;
	res->start = 0;
	res->flags |= IORESOURCE_UNSET;
}
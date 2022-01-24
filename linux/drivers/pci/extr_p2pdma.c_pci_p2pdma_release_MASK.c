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
struct pci_p2pdma {int /*<<< orphan*/  map_types; int /*<<< orphan*/  pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_1__ dev; struct pci_p2pdma* p2pdma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p2pmem_group ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct pci_dev *pdev = data;
	struct pci_p2pdma *p2pdma = pdev->p2pdma;

	if (!p2pdma)
		return;

	/* Flush and disable pci_alloc_p2p_mem() */
	pdev->p2pdma = NULL;
	FUNC1();

	FUNC0(p2pdma->pool);
	FUNC2(&pdev->dev.kobj, &p2pmem_group);
	FUNC3(&p2pdma->map_types);
}
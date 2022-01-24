#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_p2pdma {int /*<<< orphan*/  pool; int /*<<< orphan*/  map_types; } ;
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct pci_dev {TYPE_1__ dev; struct pci_p2pdma* p2pdma; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct pci_p2pdma*) ; 
 struct pci_p2pdma* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p2pmem_group ; 
 int /*<<< orphan*/  pci_p2pdma_release ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev)
{
	int error = -ENOMEM;
	struct pci_p2pdma *p2p;

	p2p = FUNC3(&pdev->dev, sizeof(*p2p), GFP_KERNEL);
	if (!p2p)
		return -ENOMEM;

	FUNC7(&p2p->map_types);

	p2p->pool = FUNC4(PAGE_SHIFT, FUNC0(&pdev->dev));
	if (!p2p->pool)
		goto out;

	error = FUNC1(&pdev->dev, pci_p2pdma_release, pdev);
	if (error)
		goto out_pool_destroy;

	pdev->p2pdma = p2p;

	error = FUNC6(&pdev->dev.kobj, &p2pmem_group);
	if (error)
		goto out_pool_destroy;

	return 0;

out_pool_destroy:
	pdev->p2pdma = NULL;
	FUNC5(p2p->pool);
out:
	FUNC2(&pdev->dev, p2p);
	return error;
}
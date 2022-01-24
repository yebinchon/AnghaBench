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
struct percpu_ref {int dummy; } ;
struct pci_dev {TYPE_1__* p2pdma; } ;
struct TYPE_2__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t,void**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct percpu_ref*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

void *FUNC6(struct pci_dev *pdev, size_t size)
{
	void *ret = NULL;
	struct percpu_ref *ref;

	/*
	 * Pairs with synchronize_rcu() in pci_p2pdma_release() to
	 * ensure pdev->p2pdma is non-NULL for the duration of the
	 * read-lock.
	 */
	FUNC3();
	if (FUNC5(!pdev->p2pdma))
		goto out;

	ret = (void *)FUNC0(pdev->p2pdma->pool, size,
			(void **) &ref);
	if (!ret)
		goto out;

	if (FUNC5(!FUNC2(ref))) {
		FUNC1(pdev->p2pdma->pool, (unsigned long) ret, size);
		ret = NULL;
		goto out;
	}
out:
	FUNC4();
	return ret;
}
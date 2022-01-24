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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t,size_t,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct percpu_ref*) ; 

void FUNC2(struct pci_dev *pdev, void *addr, size_t size)
{
	struct percpu_ref *ref;

	FUNC0(pdev->p2pdma->pool, (uintptr_t)addr, size,
			(void **) &ref);
	FUNC1(ref);
}
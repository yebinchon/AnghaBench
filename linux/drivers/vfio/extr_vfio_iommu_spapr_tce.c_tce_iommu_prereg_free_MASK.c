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
struct tce_iommu_prereg {int /*<<< orphan*/  next; int /*<<< orphan*/  mem; } ;
struct tce_container {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tce_iommu_prereg*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC3(struct tce_container *container,
		struct tce_iommu_prereg *tcemem)
{
	long ret;

	ret = FUNC2(container->mm, tcemem->mem);
	if (ret)
		return ret;

	FUNC1(&tcemem->next);
	FUNC0(tcemem);

	return 0;
}
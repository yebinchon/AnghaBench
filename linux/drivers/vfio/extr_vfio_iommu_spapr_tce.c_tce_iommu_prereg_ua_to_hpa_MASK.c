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
struct tce_container {int /*<<< orphan*/  mm; } ;
struct mm_iommu_table_group_mem_t {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct mm_iommu_table_group_mem_t* FUNC0 (int /*<<< orphan*/ ,unsigned long,unsigned long long) ; 
 long FUNC1 (struct mm_iommu_table_group_mem_t*,unsigned long,unsigned long,unsigned long*) ; 

__attribute__((used)) static int FUNC2(struct tce_container *container,
		unsigned long tce, unsigned long shift,
		unsigned long *phpa, struct mm_iommu_table_group_mem_t **pmem)
{
	long ret = 0;
	struct mm_iommu_table_group_mem_t *mem;

	mem = FUNC0(container->mm, tce, 1ULL << shift);
	if (!mem)
		return -EINVAL;

	ret = FUNC1(mem, tce, shift, phpa);
	if (ret)
		return -EINVAL;

	*pmem = mem;

	return 0;
}
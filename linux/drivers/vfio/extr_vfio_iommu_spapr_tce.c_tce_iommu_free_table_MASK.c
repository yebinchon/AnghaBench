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
struct iommu_table {unsigned long it_allocated_size; } ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iommu_table*) ; 

__attribute__((used)) static void FUNC2(struct tce_container *container,
		struct iommu_table *tbl)
{
	unsigned long pages = tbl->it_allocated_size >> PAGE_SHIFT;

	FUNC1(tbl);
	FUNC0(container->mm, pages, false);
}
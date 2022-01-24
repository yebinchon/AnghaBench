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
struct tce_container {struct iommu_table** tables; } ;
struct iommu_table_group {int dummy; } ;
struct iommu_table {scalar_t__ it_map; int /*<<< orphan*/  it_size; int /*<<< orphan*/  it_offset; } ;

/* Variables and functions */
 int IOMMU_TABLE_GROUP_MAX_TABLES ; 
 int /*<<< orphan*/  FUNC0 (struct iommu_table*) ; 
 int /*<<< orphan*/  FUNC1 (struct tce_container*,struct iommu_table*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct tce_container *container,
		struct iommu_table_group *table_group)
{
	int i;

	for (i = 0; i < IOMMU_TABLE_GROUP_MAX_TABLES; ++i) {
		struct iommu_table *tbl = container->tables[i];

		if (!tbl)
			continue;

		FUNC1(container, tbl, tbl->it_offset, tbl->it_size);
		if (tbl->it_map)
			FUNC0(tbl);

		container->tables[i] = NULL;
	}
}
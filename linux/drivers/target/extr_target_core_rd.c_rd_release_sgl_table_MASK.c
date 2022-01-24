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
typedef  size_t u32 ;
struct scatterlist {size_t rd_sg_count; struct scatterlist* sg_table; } ;
struct rd_dev_sg_table {size_t rd_sg_count; struct rd_dev_sg_table* sg_table; } ;
struct rd_dev {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*) ; 
 struct page* FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static u32 FUNC3(struct rd_dev *rd_dev, struct rd_dev_sg_table *sg_table,
				 u32 sg_table_count)
{
	struct page *pg;
	struct scatterlist *sg;
	u32 i, j, page_count = 0, sg_per_table;

	for (i = 0; i < sg_table_count; i++) {
		sg = sg_table[i].sg_table;
		sg_per_table = sg_table[i].rd_sg_count;

		for (j = 0; j < sg_per_table; j++) {
			pg = FUNC2(&sg[j]);
			if (pg) {
				FUNC0(pg);
				page_count++;
			}
		}
		FUNC1(sg);
	}

	FUNC1(sg_table);
	return page_count;
}
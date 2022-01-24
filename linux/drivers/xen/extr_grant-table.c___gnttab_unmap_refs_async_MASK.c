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
struct gntab_unmap_queue_data {int count; int age; int /*<<< orphan*/  (* done ) (int,struct gntab_unmap_queue_data*) ;int /*<<< orphan*/ * pages; int /*<<< orphan*/  kunmap_ops; int /*<<< orphan*/  unmap_ops; int /*<<< orphan*/  gnttab_work; } ;

/* Variables and functions */
 int GNTTAB_UNMAP_REFS_DELAY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct gntab_unmap_queue_data*) ; 

__attribute__((used)) static void FUNC5(struct gntab_unmap_queue_data* item)
{
	int ret;
	int pc;

	for (pc = 0; pc < item->count; pc++) {
		if (FUNC2(item->pages[pc]) > 1) {
			unsigned long delay = GNTTAB_UNMAP_REFS_DELAY * (item->age + 1);
			FUNC3(&item->gnttab_work,
					      FUNC1(delay));
			return;
		}
	}

	ret = FUNC0(item->unmap_ops, item->kunmap_ops,
				item->pages, item->count);
	item->done(ret, item);
}
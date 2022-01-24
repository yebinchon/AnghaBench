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
struct tcmu_dev {int dbi_thresh; int dbi_max; int /*<<< orphan*/  data_bitmap; int /*<<< orphan*/  data_blocks; } ;
struct tcmu_cmd {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  global_db_count ; 
 int FUNC5 (int /*<<< orphan*/ *,int,struct page*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tcmu_cmd*,int) ; 
 scalar_t__ tcmu_global_max_blocks ; 
 int /*<<< orphan*/  tcmu_unmap_work ; 

__attribute__((used)) static inline bool FUNC10(struct tcmu_dev *udev,
					struct tcmu_cmd *tcmu_cmd)
{
	struct page *page;
	int ret, dbi;

	dbi = FUNC4(udev->data_bitmap, udev->dbi_thresh);
	if (dbi == udev->dbi_thresh)
		return false;

	page = FUNC6(&udev->data_blocks, dbi);
	if (!page) {
		if (FUNC2(1, &global_db_count) >
				      tcmu_global_max_blocks)
			FUNC7(&tcmu_unmap_work, 0);

		/* try to get new page from the mm */
		page = FUNC1(GFP_KERNEL);
		if (!page)
			goto err_alloc;

		ret = FUNC5(&udev->data_blocks, dbi, page);
		if (ret)
			goto err_insert;
	}

	if (dbi > udev->dbi_max)
		udev->dbi_max = dbi;

	FUNC8(dbi, udev->data_bitmap);
	FUNC9(tcmu_cmd, dbi);

	return true;
err_insert:
	FUNC0(page);
err_alloc:
	FUNC3(&global_db_count);
	return false;
}
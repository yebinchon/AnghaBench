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
struct z_erofs_pcluster {int /*<<< orphan*/  obj; struct page** compressed_pages; int /*<<< orphan*/  clusterbits; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

int FUNC7(struct address_space *mapping,
				  struct page *page)
{
	struct z_erofs_pcluster *const pcl = (void *)FUNC5(page);
	const unsigned int clusterpages = FUNC0(pcl->clusterbits);
	int ret = 0;	/* 0 - busy */

	if (FUNC3(&pcl->obj, 1)) {
		unsigned int i;

		for (i = 0; i < clusterpages; ++i) {
			if (pcl->compressed_pages[i] == page) {
				FUNC2(pcl->compressed_pages[i], NULL);
				ret = 1;
				break;
			}
		}
		FUNC4(&pcl->obj, 1);

		if (ret) {
			FUNC1(page);
			FUNC6(page);
		}
	}
	return ret;
}
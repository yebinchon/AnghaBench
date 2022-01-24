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
typedef  int u64 ;
struct page {scalar_t__ mapping; } ;
struct inode {scalar_t__ i_mapping; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode,
				 struct page *page, u64 pos,
				 bool force_uptodate)
{
	int ret = 0;

	if (((pos & (PAGE_SIZE - 1)) || force_uptodate) &&
	    !FUNC0(page)) {
		ret = FUNC1(NULL, page);
		if (ret)
			return ret;
		FUNC2(page);
		if (!FUNC0(page)) {
			FUNC3(page);
			return -EIO;
		}
		if (page->mapping != inode->i_mapping) {
			FUNC3(page);
			return -EAGAIN;
		}
	}
	return 0;
}
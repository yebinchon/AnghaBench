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
struct v9fs_inode {int /*<<< orphan*/  fscache; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct v9fs_inode* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct page*) ; 

void FUNC6(struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct v9fs_inode *v9inode = FUNC3(inode);

	FUNC0(!v9inode->fscache);

	if (FUNC1(page)) {
		FUNC5(v9inode->fscache, page);
		FUNC0(!FUNC2(page));
		FUNC4(v9inode->fscache, page);
	}
}
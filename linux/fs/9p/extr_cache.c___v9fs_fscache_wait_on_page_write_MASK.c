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
struct v9fs_inode {int /*<<< orphan*/  fscache; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 scalar_t__ FUNC0 (struct page*) ; 
 struct v9fs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct inode*,struct page*) ; 

void FUNC4(struct inode *inode, struct page *page)
{
	const struct v9fs_inode *v9inode = FUNC1(inode);
	FUNC3(P9_DEBUG_FSC, "inode %p page %p\n", inode, page);
	if (FUNC0(page))
		FUNC2(v9inode->fscache, page);
}
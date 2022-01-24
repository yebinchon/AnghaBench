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
typedef  unsigned long u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct extent_io_tree {struct inode* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 unsigned long PAGE_SHIFT ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 

void FUNC4(struct extent_io_tree *tree, u64 start, u64 end)
{
	struct inode *inode = tree->private_data;
	unsigned long index = start >> PAGE_SHIFT;
	unsigned long end_index = end >> PAGE_SHIFT;
	struct page *page;

	while (index <= end_index) {
		page = FUNC1(inode->i_mapping, index);
		FUNC0(page); /* Pages should be in the extent_io_tree */
		FUNC3(page);
		FUNC2(page);
		index++;
	}
}
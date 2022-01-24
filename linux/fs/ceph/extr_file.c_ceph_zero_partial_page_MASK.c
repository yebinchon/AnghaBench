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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_mapping; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 struct page* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int,unsigned int) ; 

__attribute__((used)) static inline void FUNC5(
	struct inode *inode, loff_t offset, unsigned size)
{
	struct page *page;
	pgoff_t index = offset >> PAGE_SHIFT;

	page = FUNC0(inode->i_mapping, index);
	if (page) {
		FUNC3(page);
		FUNC4(page, offset & (PAGE_SIZE - 1), size);
		FUNC2(page);
		FUNC1(page);
	}
}
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
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct page*) ; 
 int FUNC2 (struct page*) ; 

__attribute__((used)) static int FUNC3(struct page *page)
{
	int retval;
	struct inode *inode = page->mapping->host;

	FUNC1(inode, page);
	if (FUNC0(page)) {
		retval = FUNC2(page);
		if (retval)
			return retval;
	}
	return 0;
}
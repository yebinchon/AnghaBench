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
struct writeback_control {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int FUNC4 (struct page*,struct writeback_control*) ; 

__attribute__((used)) static int FUNC5(struct page *page, struct writeback_control *wbc)
{
	int err;
	struct inode *inode = page->mapping->host;
	FUNC0(!inode);
	FUNC1(inode);
	err = FUNC4(page, wbc);
	if (err == -ERESTARTSYS) {
		/* direct memory reclaimer was killed by SIGKILL. return 0
		 * to prevent caller from setting mapping/page error */
		err = 0;
	}
	FUNC3(page);
	FUNC2(inode);
	return err;
}
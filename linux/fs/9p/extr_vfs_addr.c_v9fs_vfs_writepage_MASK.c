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
struct writeback_control {int dummy; } ;
struct page {int /*<<< orphan*/  mapping; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct page *page, struct writeback_control *wbc)
{
	int retval;

	FUNC2(P9_DEBUG_VFS, "page %p\n", page);

	retval = FUNC5(page);
	if (retval < 0) {
		if (retval == -EAGAIN) {
			FUNC3(wbc, page);
			retval = 0;
		} else {
			FUNC0(page);
			FUNC1(page->mapping, retval);
		}
	} else
		retval = 0;

	FUNC4(page);
	return retval;
}
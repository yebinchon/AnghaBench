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
struct page {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct page *page, struct writeback_control *wbc)
{
	int rc;

	rc = FUNC2(page);
	if (rc) {
		FUNC3(KERN_WARNING, "Error encrypting "
				"page (upper index [0x%.16lx])\n", page->index);
		FUNC0(page);
		goto out;
	}
	FUNC1(page);
out:
	FUNC4(page);
	return rc;
}
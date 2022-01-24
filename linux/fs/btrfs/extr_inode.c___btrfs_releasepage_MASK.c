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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct page *page, gfp_t gfp_flags)
{
	int ret = FUNC3(page, gfp_flags);
	if (ret == 1) {
		FUNC0(page);
		FUNC2(page, 0);
		FUNC1(page);
	}
	return ret;
}
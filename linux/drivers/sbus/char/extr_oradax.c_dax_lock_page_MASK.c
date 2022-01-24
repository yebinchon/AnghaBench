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
typedef  void page ;

/* Variables and functions */
 int /*<<< orphan*/  FOLL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,void*,...) ; 
 int FUNC1 (unsigned long,int,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static int FUNC2(void *va, struct page **p)
{
	int ret;

	FUNC0("uva %p", va);

	ret = FUNC1((unsigned long)va, 1, FOLL_WRITE, p);
	if (ret == 1) {
		FUNC0("locked page %p, for VA %p", *p, va);
		return 0;
	}

	FUNC0("get_user_pages failed, va=%p, ret=%d", va, ret);
	return -1;
}
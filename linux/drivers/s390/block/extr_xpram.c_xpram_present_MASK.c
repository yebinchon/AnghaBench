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

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(void)
{
	unsigned long mem_page;
	int rc;

	mem_page = (unsigned long) FUNC0(GFP_KERNEL);
	if (!mem_page)
		return -ENOMEM;
	rc = FUNC2(mem_page, 0);
	FUNC1(mem_page);
	return rc ? -ENXIO : 0;
}
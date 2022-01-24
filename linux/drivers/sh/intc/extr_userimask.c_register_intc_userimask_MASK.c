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
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SZ_4K ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int uimask ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(unsigned long addr)
{
	if (FUNC3(uimask))
		return -EBUSY;

	uimask = FUNC1(addr, SZ_4K);
	if (FUNC3(!uimask))
		return -ENOMEM;

	FUNC2("userimask support registered for levels 0 -> %d\n",
		FUNC0() - 1);

	return 0;
}
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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(u32 sectorsize, u32 nodesize)
{
	int ret;

	FUNC3("running extent I/O tests");

	ret = FUNC1(sectorsize);
	if (ret)
		goto out;

	ret = FUNC2();
	if (ret)
		goto out;

	ret = FUNC0(sectorsize, nodesize);
out:
	return ret;
}
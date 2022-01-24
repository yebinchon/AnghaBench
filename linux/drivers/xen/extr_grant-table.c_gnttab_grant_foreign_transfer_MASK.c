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
typedef  int /*<<< orphan*/  domid_t ;

/* Variables and functions */
 int ENOSPC ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(domid_t domid, unsigned long pfn)
{
	int ref;

	ref = FUNC0(1);
	if (FUNC2(ref < 0))
		return -ENOSPC;
	FUNC1(ref, domid, pfn);

	return ref;
}
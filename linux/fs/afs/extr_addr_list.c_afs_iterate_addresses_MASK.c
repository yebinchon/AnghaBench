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
struct afs_addr_cursor {unsigned long tried; int index; int responded; TYPE_1__* alist; int /*<<< orphan*/  nr_iterations; } ;
struct TYPE_2__ {unsigned long responded; unsigned long failed; int /*<<< orphan*/  preferred; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 scalar_t__ FUNC4 (int,unsigned long*) ; 

bool FUNC5(struct afs_addr_cursor *ac)
{
	unsigned long set, failed;
	int index;

	if (!ac->alist)
		return false;

	set = ac->alist->responded;
	failed = ac->alist->failed;
	FUNC2("%lx-%lx-%lx,%d", set, failed, ac->tried, ac->index);

	ac->nr_iterations++;

	set &= ~(failed | ac->tried);

	if (!set)
		return false;

	index = FUNC0(ac->alist->preferred);
	if (FUNC4(index, &set))
		goto selected;

	index = FUNC1(set);

selected:
	ac->index = index;
	FUNC3(index, &ac->tried);
	ac->responded = false;
	return true;
}
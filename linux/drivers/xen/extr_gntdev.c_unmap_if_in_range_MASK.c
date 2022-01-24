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
struct gntdev_grant_map {TYPE_1__* vma; int /*<<< orphan*/  count; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {unsigned long vm_start; int /*<<< orphan*/  vm_end; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct gntdev_grant_map*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 unsigned long FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC5 (struct gntdev_grant_map*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct gntdev_grant_map *map,
			      unsigned long start, unsigned long end,
			      bool blockable)
{
	unsigned long mstart, mend;
	int err;

	if (!FUNC1(map, start, end))
		return 0;

	if (!blockable)
		return -EAGAIN;

	mstart = FUNC2(start, map->vma->vm_start);
	mend   = FUNC3(end,   map->vma->vm_end);
	FUNC4("map %d+%d (%lx %lx), range %lx %lx, mrange %lx %lx\n",
			map->index, map->count,
			map->vma->vm_start, map->vma->vm_end,
			start, end, mstart, mend);
	err = FUNC5(map,
				(mstart - map->vma->vm_start) >> PAGE_SHIFT,
				(mend - mstart) >> PAGE_SHIFT);
	FUNC0(err);

	return 0;
}
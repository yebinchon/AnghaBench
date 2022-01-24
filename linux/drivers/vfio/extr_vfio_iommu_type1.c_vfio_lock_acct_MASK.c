#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vfio_dma {int /*<<< orphan*/  lock_cap; TYPE_1__* task; } ;
struct mm_struct {int /*<<< orphan*/  mmap_sem; } ;
struct TYPE_3__ {struct mm_struct* mm; } ;

/* Variables and functions */
 int ESRCH ; 
 int FUNC0 (struct mm_struct*,int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 struct mm_struct* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct vfio_dma *dma, long npage, bool async)
{
	struct mm_struct *mm;
	int ret;

	if (!npage)
		return 0;

	mm = async ? FUNC3(dma->task) : dma->task->mm;
	if (!mm)
		return -ESRCH; /* process exited */

	ret = FUNC2(&mm->mmap_sem);
	if (!ret) {
		ret = FUNC0(mm, FUNC1(npage), npage > 0, dma->task,
					  dma->lock_cap);
		FUNC5(&mm->mmap_sem);
	}

	if (async)
		FUNC4(mm);

	return ret;
}
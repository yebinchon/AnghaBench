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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rio_mport {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int (* map_outb ) (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  rio_mmap_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct rio_mport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC3(struct rio_mport *mport, u16 destid, u64 rbase,
			u32 size, u32 rflags, dma_addr_t *local)
{
	int rc;
	unsigned long flags;

	if (!mport->ops->map_outb)
		return -ENODEV;

	FUNC0(&rio_mmap_lock, flags);
	rc = mport->ops->map_outb(mport, destid, rbase, size,
		rflags, local);
	FUNC1(&rio_mmap_lock, flags);

	return rc;
}
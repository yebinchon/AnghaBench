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
struct btrfs_disk_balance_args {int /*<<< orphan*/  stripes_max; int /*<<< orphan*/  stripes_min; int /*<<< orphan*/  limit; int /*<<< orphan*/  flags; int /*<<< orphan*/  target; int /*<<< orphan*/  vend; int /*<<< orphan*/  vstart; int /*<<< orphan*/  pend; int /*<<< orphan*/  pstart; int /*<<< orphan*/  devid; int /*<<< orphan*/  usage; int /*<<< orphan*/  profiles; } ;
struct btrfs_balance_args {void* stripes_max; void* stripes_min; void* limit; void* flags; void* target; void* vend; void* vstart; void* pend; void* pstart; void* devid; void* usage; void* profiles; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_balance_args*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC3(struct btrfs_balance_args *cpu,
			       const struct btrfs_disk_balance_args *disk)
{
	FUNC2(cpu, 0, sizeof(*cpu));

	cpu->profiles = FUNC1(disk->profiles);
	cpu->usage = FUNC1(disk->usage);
	cpu->devid = FUNC1(disk->devid);
	cpu->pstart = FUNC1(disk->pstart);
	cpu->pend = FUNC1(disk->pend);
	cpu->vstart = FUNC1(disk->vstart);
	cpu->vend = FUNC1(disk->vend);
	cpu->target = FUNC1(disk->target);
	cpu->flags = FUNC1(disk->flags);
	cpu->limit = FUNC1(disk->limit);
	cpu->stripes_min = FUNC0(disk->stripes_min);
	cpu->stripes_max = FUNC0(disk->stripes_max);
}
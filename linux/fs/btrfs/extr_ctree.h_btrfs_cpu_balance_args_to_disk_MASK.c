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
struct btrfs_disk_balance_args {void* stripes_max; void* stripes_min; void* limit; void* flags; void* target; void* vend; void* vstart; void* pend; void* pstart; void* devid; void* usage; void* profiles; } ;
struct btrfs_balance_args {int /*<<< orphan*/  stripes_max; int /*<<< orphan*/  stripes_min; int /*<<< orphan*/  limit; int /*<<< orphan*/  flags; int /*<<< orphan*/  target; int /*<<< orphan*/  vend; int /*<<< orphan*/  vstart; int /*<<< orphan*/  pend; int /*<<< orphan*/  pstart; int /*<<< orphan*/  devid; int /*<<< orphan*/  usage; int /*<<< orphan*/  profiles; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_disk_balance_args*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void
FUNC3(struct btrfs_disk_balance_args *disk,
			       const struct btrfs_balance_args *cpu)
{
	FUNC2(disk, 0, sizeof(*disk));

	disk->profiles = FUNC1(cpu->profiles);
	disk->usage = FUNC1(cpu->usage);
	disk->devid = FUNC1(cpu->devid);
	disk->pstart = FUNC1(cpu->pstart);
	disk->pend = FUNC1(cpu->pend);
	disk->vstart = FUNC1(cpu->vstart);
	disk->vend = FUNC1(cpu->vend);
	disk->target = FUNC1(cpu->target);
	disk->flags = FUNC1(cpu->flags);
	disk->limit = FUNC1(cpu->limit);
	disk->stripes_min = FUNC0(cpu->stripes_min);
	disk->stripes_max = FUNC0(cpu->stripes_max);
}
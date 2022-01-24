#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct btrfs_trans_handle {TYPE_3__* fs_info; TYPE_2__* transaction; } ;
struct TYPE_6__ {int avg_delayed_ref_runtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_entries; } ;
struct TYPE_5__ {TYPE_1__ delayed_refs; } ;

/* Variables and functions */
 int NSEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct btrfs_trans_handle *trans)
{
	u64 num_entries =
		FUNC0(&trans->transaction->delayed_refs.num_entries);
	u64 avg_runtime;
	u64 val;

	FUNC2();
	avg_runtime = trans->fs_info->avg_delayed_ref_runtime;
	val = num_entries * avg_runtime;
	if (val >= NSEC_PER_SEC)
		return 1;
	if (val >= NSEC_PER_SEC / 2)
		return 2;

	return FUNC1(trans->fs_info);
}
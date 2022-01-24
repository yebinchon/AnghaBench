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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; int /*<<< orphan*/  root_item; } ;
struct btrfs_fs_info {int /*<<< orphan*/  subvol_srcu; int /*<<< orphan*/  fs_roots_radix; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_root**) ; 
 struct btrfs_root* FUNC1 (struct btrfs_root*) ; 
 int FUNC2 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_root*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,void**,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

int FUNC8(struct btrfs_fs_info *fs_info)
{
	u64 root_objectid = 0;
	struct btrfs_root *gang[8];
	int i = 0;
	int err = 0;
	unsigned int ret = 0;
	int index;

	while (1) {
		index = FUNC6(&fs_info->subvol_srcu);
		ret = FUNC5(&fs_info->fs_roots_radix,
					     (void **)gang, root_objectid,
					     FUNC0(gang));
		if (!ret) {
			FUNC7(&fs_info->subvol_srcu, index);
			break;
		}
		root_objectid = gang[ret - 1]->root_key.objectid + 1;

		for (i = 0; i < ret; i++) {
			/* Avoid to grab roots in dead_roots */
			if (FUNC4(&gang[i]->root_item) == 0) {
				gang[i] = NULL;
				continue;
			}
			/* grab all the search result for later use */
			gang[i] = FUNC1(gang[i]);
		}
		FUNC7(&fs_info->subvol_srcu, index);

		for (i = 0; i < ret; i++) {
			if (!gang[i])
				continue;
			root_objectid = gang[i]->root_key.objectid;
			err = FUNC2(gang[i]);
			if (err)
				break;
			FUNC3(gang[i]);
		}
		root_objectid++;
	}

	/* release the uncleaned roots due to error */
	for (; i < ret; i++) {
		if (gang[i])
			FUNC3(gang[i]);
	}
	return err;
}
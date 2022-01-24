#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  objectid; } ;
struct btrfs_root {int /*<<< orphan*/  root_item_lock; int /*<<< orphan*/  dedupe_in_progress; scalar_t__ send_in_progress; TYPE_1__ root_key; int /*<<< orphan*/  fs_info; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 scalar_t__ BTRFS_MAX_DEDUPE_LEN ; 
 int EAGAIN ; 
 int FUNC1 (struct inode*,scalar_t__,scalar_t__,struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *src, u64 loff, u64 olen,
			     struct inode *dst, u64 dst_loff)
{
	int ret;
	u64 i, tail_len, chunk_count;
	struct btrfs_root *root_dst = FUNC0(dst)->root;

	FUNC4(&root_dst->root_item_lock);
	if (root_dst->send_in_progress) {
		FUNC2(root_dst->fs_info,
"cannot deduplicate to root %llu while send operations are using it (%d in progress)",
			      root_dst->root_key.objectid,
			      root_dst->send_in_progress);
		FUNC5(&root_dst->root_item_lock);
		return -EAGAIN;
	}
	root_dst->dedupe_in_progress++;
	FUNC5(&root_dst->root_item_lock);

	tail_len = olen % BTRFS_MAX_DEDUPE_LEN;
	chunk_count = FUNC3(olen, BTRFS_MAX_DEDUPE_LEN);

	for (i = 0; i < chunk_count; i++) {
		ret = FUNC1(src, loff, BTRFS_MAX_DEDUPE_LEN,
					      dst, dst_loff);
		if (ret)
			goto out;

		loff += BTRFS_MAX_DEDUPE_LEN;
		dst_loff += BTRFS_MAX_DEDUPE_LEN;
	}

	if (tail_len > 0)
		ret = FUNC1(src, loff, tail_len, dst,
					      dst_loff);
out:
	FUNC4(&root_dst->root_item_lock);
	root_dst->dedupe_in_progress--;
	FUNC5(&root_dst->root_item_lock);

	return ret;
}
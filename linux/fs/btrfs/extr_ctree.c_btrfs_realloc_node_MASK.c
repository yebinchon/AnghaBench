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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct extent_buffer {scalar_t__ start; } ;
struct btrfs_trans_handle {scalar_t__ transaction; scalar_t__ transid; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_fs_info {scalar_t__ running_transaction; scalar_t__ generation; int nodesize; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct extent_buffer*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 scalar_t__ FUNC7 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_key*,int) ; 
 scalar_t__ FUNC10 (struct extent_buffer*,int) ; 
 int FUNC11 (struct extent_buffer*,scalar_t__,int,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int FUNC15 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC16 (struct btrfs_disk_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC18 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC20 (int,int) ; 
 struct extent_buffer* FUNC21 (struct btrfs_fs_info*,scalar_t__,scalar_t__,int,struct btrfs_key*) ; 

int FUNC22(struct btrfs_trans_handle *trans,
		       struct btrfs_root *root, struct extent_buffer *parent,
		       int start_slot, u64 *last_ret,
		       struct btrfs_key *progress)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct extent_buffer *cur;
	u64 blocknr;
	u64 gen;
	u64 search_start = *last_ret;
	u64 last_block = 0;
	u64 other;
	u32 parent_nritems;
	int end_slot;
	int i;
	int err = 0;
	int parent_level;
	int uptodate;
	u32 blocksize;
	int progress_passed = 0;
	struct btrfs_disk_key disk_key;

	parent_level = FUNC5(parent);

	FUNC2(trans->transaction != fs_info->running_transaction);
	FUNC2(trans->transid != fs_info->generation);

	parent_nritems = FUNC6(parent);
	blocksize = fs_info->nodesize;
	end_slot = parent_nritems - 1;

	if (parent_nritems <= 1)
		return 0;

	FUNC12(parent);

	for (i = start_slot; i <= end_slot; i++) {
		struct btrfs_key first_key;
		int close = 1;

		FUNC8(parent, &disk_key, i);
		if (!progress_passed && FUNC16(&disk_key, progress) < 0)
			continue;

		progress_passed = 1;
		blocknr = FUNC7(parent, i);
		gen = FUNC10(parent, i);
		FUNC9(parent, &first_key, i);
		if (last_block == 0)
			last_block = blocknr;

		if (i > 0) {
			other = FUNC7(parent, i - 1);
			close = FUNC15(blocknr, other, blocksize);
		}
		if (!close && i < end_slot) {
			other = FUNC7(parent, i + 1);
			close = FUNC15(blocknr, other, blocksize);
		}
		if (close) {
			last_block = blocknr;
			continue;
		}

		cur = FUNC18(fs_info, blocknr);
		if (cur)
			uptodate = FUNC4(cur, gen, 0);
		else
			uptodate = 0;
		if (!cur || !uptodate) {
			if (!cur) {
				cur = FUNC21(fs_info, blocknr, gen,
						      parent_level - 1,
						      &first_key);
				if (FUNC0(cur)) {
					return FUNC1(cur);
				} else if (!FUNC17(cur)) {
					FUNC19(cur);
					return -EIO;
				}
			} else if (!uptodate) {
				err = FUNC11(cur, gen,
						parent_level - 1,&first_key);
				if (err) {
					FUNC19(cur);
					return err;
				}
			}
		}
		if (search_start == 0)
			search_start = last_block;

		FUNC13(cur);
		FUNC12(cur);
		err = FUNC3(trans, root, cur, parent, i,
					&cur, search_start,
					FUNC20(16 * blocksize,
					    (end_slot - i) * blocksize));
		if (err) {
			FUNC14(cur);
			FUNC19(cur);
			break;
		}
		search_start = cur->start;
		last_block = cur->start;
		*last_ret = search_start;
		FUNC14(cur);
		FUNC19(cur);
	}
	return err;
}
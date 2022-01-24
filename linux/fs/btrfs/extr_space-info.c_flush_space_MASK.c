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
typedef  int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_space_info {int /*<<< orphan*/  flags; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {struct btrfs_root* extent_root; } ;

/* Variables and functions */
#define  ALLOC_CHUNK 137 
#define  ALLOC_CHUNK_FORCE 136 
 int /*<<< orphan*/  CHUNK_ALLOC_FORCE ; 
 int /*<<< orphan*/  CHUNK_ALLOC_NO_FORCE ; 
#define  COMMIT_TRANS 135 
 int ENOSPC ; 
#define  FLUSH_DELALLOC 134 
#define  FLUSH_DELALLOC_WAIT 133 
#define  FLUSH_DELAYED_ITEMS 132 
#define  FLUSH_DELAYED_ITEMS_NR 131 
#define  FLUSH_DELAYED_REFS 130 
#define  FLUSH_DELAYED_REFS_NR 129 
 int /*<<< orphan*/  FUNC0 (struct btrfs_trans_handle*) ; 
 int FUNC1 (struct btrfs_trans_handle*) ; 
#define  RUN_DELAYED_IPUTS 128 
 int FUNC2 (struct btrfs_trans_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*) ; 
 struct btrfs_trans_handle* FUNC4 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 
 int FUNC7 (struct btrfs_trans_handle*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_fs_info*) ; 
 int FUNC10 (struct btrfs_fs_info*,int) ; 
 int FUNC11 (struct btrfs_fs_info*,struct btrfs_space_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct btrfs_fs_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC14(struct btrfs_fs_info *fs_info,
		       struct btrfs_space_info *space_info, u64 num_bytes,
		       int state)
{
	struct btrfs_root *root = fs_info->extent_root;
	struct btrfs_trans_handle *trans;
	int nr;
	int ret = 0;

	switch (state) {
	case FLUSH_DELAYED_ITEMS_NR:
	case FLUSH_DELAYED_ITEMS:
		if (state == FLUSH_DELAYED_ITEMS_NR)
			nr = FUNC10(fs_info, num_bytes) * 2;
		else
			nr = -1;

		trans = FUNC4(root);
		if (FUNC0(trans)) {
			ret = FUNC1(trans);
			break;
		}
		ret = FUNC7(trans, nr);
		FUNC3(trans);
		break;
	case FLUSH_DELALLOC:
	case FLUSH_DELALLOC_WAIT:
		FUNC12(fs_info, num_bytes * 2, num_bytes,
				state == FLUSH_DELALLOC_WAIT);
		break;
	case FLUSH_DELAYED_REFS_NR:
	case FLUSH_DELAYED_REFS:
		trans = FUNC4(root);
		if (FUNC0(trans)) {
			ret = FUNC1(trans);
			break;
		}
		if (state == FLUSH_DELAYED_REFS_NR)
			nr = FUNC10(fs_info, num_bytes);
		else
			nr = 0;
		FUNC8(trans, nr);
		FUNC3(trans);
		break;
	case ALLOC_CHUNK:
	case ALLOC_CHUNK_FORCE:
		trans = FUNC4(root);
		if (FUNC0(trans)) {
			ret = FUNC1(trans);
			break;
		}
		ret = FUNC2(trans,
				FUNC5(fs_info),
				(state == ALLOC_CHUNK) ? CHUNK_ALLOC_NO_FORCE :
					CHUNK_ALLOC_FORCE);
		FUNC3(trans);
		if (ret > 0 || ret == -ENOSPC)
			ret = 0;
		break;
	case RUN_DELAYED_IPUTS:
		/*
		 * If we have pending delayed iputs then we could free up a
		 * bunch of pinned space, so make sure we run the iputs before
		 * we do our pinned bytes check below.
		 */
		FUNC6(fs_info);
		FUNC9(fs_info);
		break;
	case COMMIT_TRANS:
		ret = FUNC11(fs_info, space_info);
		break;
	default:
		ret = -ENOSPC;
		break;
	}

	FUNC13(fs_info, space_info->flags, num_bytes, state,
				ret);
	return;
}
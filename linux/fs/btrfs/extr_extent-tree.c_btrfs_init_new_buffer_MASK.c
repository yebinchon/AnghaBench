#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct extent_buffer {scalar_t__ lock_owner; int log_index; scalar_t__ len; scalar_t__ start; int /*<<< orphan*/  bflags; } ;
struct btrfs_trans_handle {int dirty; TYPE_3__* transaction; int /*<<< orphan*/  transid; } ;
struct TYPE_6__ {scalar_t__ objectid; } ;
struct btrfs_root {int log_transid; int /*<<< orphan*/  dirty_log_pages; TYPE_2__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_header {int dummy; } ;
struct btrfs_fs_info {int /*<<< orphan*/  chunk_tree_uuid; TYPE_1__* fs_devices; } ;
struct TYPE_8__ {scalar_t__ pid; } ;
struct TYPE_7__ {int /*<<< orphan*/  dirty_pages; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata_uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_MIXED_BACKREF_REV ; 
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ; 
 struct extent_buffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EUCLEAN ; 
 int /*<<< orphan*/  EXTENT_BUFFER_STALE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 struct extent_buffer* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct extent_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct extent_buffer *
FUNC22(struct btrfs_trans_handle *trans, struct btrfs_root *root,
		      u64 bytenr, int level, u64 owner)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct extent_buffer *buf;

	buf = FUNC4(fs_info, bytenr);
	if (FUNC1(buf))
		return buf;

	/*
	 * Extra safety check in case the extent tree is corrupted and extent
	 * allocator chooses to use a tree block which is already used and
	 * locked.
	 */
	if (buf->lock_owner == current->pid) {
		FUNC3(fs_info,
"tree block %llu owner %llu already locked by pid=%d, extent tree corruption detected",
			buf->start, FUNC5(buf), current->pid);
		FUNC15(buf);
		return FUNC0(-EUCLEAN);
	}

	FUNC6(root->root_key.objectid, buf, level);
	FUNC13(buf);
	FUNC2(buf);
	FUNC14(EXTENT_BUFFER_STALE, &buf->bflags);

	FUNC12(buf);
	FUNC17(buf);

	FUNC16(buf, 0, sizeof(struct btrfs_header));
	FUNC10(buf, level);
	FUNC8(buf, buf->start);
	FUNC9(buf, trans->transid);
	FUNC7(buf, BTRFS_MIXED_BACKREF_REV);
	FUNC11(buf, owner);
	FUNC21(buf, fs_info->fs_devices->metadata_uuid);
	FUNC20(buf, fs_info->chunk_tree_uuid);
	if (root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID) {
		buf->log_index = root->log_transid % 2;
		/*
		 * we allow two log transactions at a time, use different
		 * EXTENT bit to differentiate dirty pages.
		 */
		if (buf->log_index == 0)
			FUNC18(&root->dirty_log_pages, buf->start,
					buf->start + buf->len - 1, GFP_NOFS);
		else
			FUNC19(&root->dirty_log_pages, buf->start,
					buf->start + buf->len - 1);
	} else {
		buf->log_index = -1;
		FUNC18(&trans->transaction->dirty_pages, buf->start,
			 buf->start + buf->len - 1, GFP_NOFS);
	}
	trans->dirty = true;
	/* this returns a buffer locked for blocking */
	return buf;
}
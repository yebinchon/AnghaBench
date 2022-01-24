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
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {scalar_t__ transid; struct btrfs_fs_info* fs_info; } ;
struct btrfs_key_ptr {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,int) ; 
 scalar_t__ FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*,struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int) ; 
 int FUNC11 (struct extent_buffer*,struct extent_buffer*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct btrfs_trans_handle *trans,
			  struct extent_buffer *dst,
			  struct extent_buffer *src, int empty)
{
	struct btrfs_fs_info *fs_info = trans->fs_info;
	int push_items = 0;
	int src_nritems;
	int dst_nritems;
	int ret = 0;

	src_nritems = FUNC4(src);
	dst_nritems = FUNC4(dst);
	push_items = FUNC0(fs_info) - dst_nritems;
	FUNC1(FUNC3(src) != trans->transid);
	FUNC1(FUNC3(dst) != trans->transid);

	if (!empty && src_nritems <= 8)
		return 1;

	if (push_items <= 0)
		return 1;

	if (empty) {
		push_items = FUNC10(src_nritems, push_items);
		if (push_items < src_nritems) {
			/* leave at least 8 pointers in the node if
			 * we aren't going to empty it
			 */
			if (src_nritems - push_items < 8) {
				if (push_items <= 8)
					return 1;
				push_items -= 8;
			}
		}
	} else
		push_items = FUNC10(src_nritems - 8, push_items);

	ret = FUNC11(dst, src, dst_nritems, 0, push_items);
	if (ret) {
		FUNC2(trans, ret);
		return ret;
	}
	FUNC8(dst, src,
			   FUNC6(dst_nritems),
			   FUNC6(0),
			   push_items * sizeof(struct btrfs_key_ptr));

	if (push_items < src_nritems) {
		/*
		 * Don't call tree_mod_log_insert_move here, key removal was
		 * already fully logged by tree_mod_log_eb_copy above.
		 */
		FUNC9(src, FUNC6(0),
				      FUNC6(push_items),
				      (src_nritems - push_items) *
				      sizeof(struct btrfs_key_ptr));
	}
	FUNC7(src, src_nritems - push_items);
	FUNC7(dst, dst_nritems + push_items);
	FUNC5(src);
	FUNC5(dst);

	return ret;
}
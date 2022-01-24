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
typedef  int /*<<< orphan*/  u64 ;
struct tree_mod_root {int level; int /*<<< orphan*/  logical; } ;
struct tree_mod_elem {scalar_t__ op; int /*<<< orphan*/  generation; struct tree_mod_root old_root; } ;
struct extent_buffer {int /*<<< orphan*/  start; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_MIXED_BACKREF_REV ; 
 scalar_t__ FUNC0 (struct btrfs_fs_info*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 scalar_t__ MOD_LOG_KEY_REMOVE_WHILE_FREEING ; 
 scalar_t__ MOD_LOG_ROOT_REPLACE ; 
 scalar_t__ FUNC2 (int) ; 
 struct tree_mod_elem* FUNC3 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_fs_info*,struct extent_buffer*,int /*<<< orphan*/ ,struct tree_mod_elem*) ; 
 struct extent_buffer* FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC6 (struct extent_buffer*) ; 
 int FUNC7 (struct extent_buffer*) ; 
 scalar_t__ FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC10 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC19 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC22 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC23 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct tree_mod_elem* FUNC24 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct extent_buffer *
FUNC25(struct btrfs_root *root, u64 time_seq)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct tree_mod_elem *tm;
	struct extent_buffer *eb = NULL;
	struct extent_buffer *eb_root;
	u64 eb_root_owner = 0;
	struct extent_buffer *old;
	struct tree_mod_root *old_root = NULL;
	u64 old_generation = 0;
	u64 logical;
	int level;

	eb_root = FUNC10(root);
	tm = FUNC3(eb_root, time_seq);
	if (!tm)
		return eb_root;

	if (tm->op == MOD_LOG_ROOT_REPLACE) {
		old_root = &tm->old_root;
		old_generation = tm->generation;
		logical = old_root->logical;
		level = old_root->level;
	} else {
		logical = eb_root->start;
		level = FUNC7(eb_root);
	}

	tm = FUNC24(fs_info, logical, time_seq);
	if (old_root && tm && tm->op != MOD_LOG_KEY_REMOVE_WHILE_FREEING) {
		FUNC18(eb_root);
		FUNC22(eb_root);
		old = FUNC23(fs_info, logical, 0, level, NULL);
		if (FUNC2(FUNC1(old) || !FUNC21(old))) {
			if (!FUNC1(old))
				FUNC22(old);
			FUNC20(fs_info,
				   "failed to read tree block %llu from get_old_root",
				   logical);
		} else {
			eb = FUNC6(old);
			FUNC22(old);
		}
	} else if (old_root) {
		eb_root_owner = FUNC9(eb_root);
		FUNC18(eb_root);
		FUNC22(eb_root);
		eb = FUNC5(fs_info, logical);
	} else {
		FUNC16(eb_root);
		eb = FUNC6(eb_root);
		FUNC19(eb_root);
		FUNC22(eb_root);
	}

	if (!eb)
		return NULL;
	FUNC17(eb);
	if (old_root) {
		FUNC12(eb, eb->start);
		FUNC11(eb, BTRFS_MIXED_BACKREF_REV);
		FUNC15(eb, eb_root_owner);
		FUNC14(eb, old_root->level);
		FUNC13(eb, old_generation);
	}
	if (tm)
		FUNC4(fs_info, eb, time_seq, tm);
	else
		FUNC2(FUNC7(eb) != 0);
	FUNC2(FUNC8(eb) > FUNC0(fs_info));

	return eb;
}
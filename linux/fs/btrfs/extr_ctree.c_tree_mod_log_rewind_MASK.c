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
struct tree_mod_elem {scalar_t__ op; scalar_t__ slot; } ;
struct extent_buffer {int /*<<< orphan*/  start; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ MOD_LOG_KEY_REMOVE_WHILE_FREEING ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*,struct extent_buffer*,int /*<<< orphan*/ ,struct tree_mod_elem*) ; 
 struct extent_buffer* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 scalar_t__ FUNC7 (struct extent_buffer*) ; 
 scalar_t__ FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct extent_buffer*) ; 
 struct tree_mod_elem* FUNC19 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct extent_buffer *
FUNC20(struct btrfs_fs_info *fs_info, struct btrfs_path *path,
		    struct extent_buffer *eb, u64 time_seq)
{
	struct extent_buffer *eb_rewin;
	struct tree_mod_elem *tm;

	if (!time_seq)
		return eb;

	if (FUNC7(eb) == 0)
		return eb;

	tm = FUNC19(fs_info, eb->start, time_seq);
	if (!tm)
		return eb;

	FUNC15(path);
	FUNC14(eb);

	if (tm->op == MOD_LOG_KEY_REMOVE_WHILE_FREEING) {
		FUNC1(tm->slot != 0);
		eb_rewin = FUNC4(fs_info, eb->start);
		if (!eb_rewin) {
			FUNC17(eb);
			FUNC18(eb);
			return NULL;
		}
		FUNC11(eb_rewin, eb->start);
		FUNC10(eb_rewin,
					     FUNC6(eb));
		FUNC13(eb_rewin, FUNC9(eb));
		FUNC12(eb_rewin, FUNC7(eb));
	} else {
		eb_rewin = FUNC5(eb);
		if (!eb_rewin) {
			FUNC17(eb);
			FUNC18(eb);
			return NULL;
		}
	}

	FUNC17(eb);
	FUNC18(eb);

	FUNC16(eb_rewin);
	FUNC3(fs_info, eb_rewin, time_seq, tm);
	FUNC2(FUNC8(eb_rewin) >
		FUNC0(fs_info));

	return eb_rewin;
}
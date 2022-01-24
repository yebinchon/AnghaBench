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
typedef  int u32 ;
struct extent_buffer {struct btrfs_fs_info* fs_info; } ;
struct btrfs_key {int /*<<< orphan*/  offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC18 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 

void FUNC19(struct extent_buffer *c, bool follow)
{
	struct btrfs_fs_info *fs_info;
	int i; u32 nr;
	struct btrfs_key key;
	int level;

	if (!c)
		return;
	fs_info = c->fs_info;
	nr = FUNC6(c);
	level = FUNC5(c);
	if (level == 0) {
		FUNC13(c);
		return;
	}
	FUNC8(fs_info,
		   "node %llu level %d gen %llu total ptrs %d free spc %u owner %llu",
		   FUNC3(c), level, FUNC4(c),
		   nr, (u32)FUNC0(fs_info) - nr,
		   FUNC7(c));
	FUNC17(c);
	for (i = 0; i < nr; i++) {
		FUNC11(c, &key, i);
		FUNC16("\tkey %d (%llu %u %llu) block %llu gen %llu\n",
		       i, key.objectid, key.type, key.offset,
		       FUNC10(c, i),
		       FUNC12(c, i));
	}
	if (!follow)
		return;
	for (i = 0; i < nr; i++) {
		struct btrfs_key first_key;
		struct extent_buffer *next;

		FUNC11(c, &first_key, i);
		next = FUNC18(fs_info, FUNC10(c, i),
				       FUNC12(c, i),
				       level - 1, &first_key);
		if (FUNC2(next)) {
			continue;
		} else if (!FUNC14(next)) {
			FUNC15(next);
			continue;
		}

		if (FUNC9(next) &&
		   level != 1)
			FUNC1();
		if (FUNC5(next) !=
		       level - 1)
			FUNC1();
		FUNC19(next, follow);
		FUNC15(next);
	}
}
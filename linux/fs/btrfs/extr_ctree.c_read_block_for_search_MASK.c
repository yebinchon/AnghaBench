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
struct extent_buffer {int dummy; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {scalar_t__ reada; } ;
struct btrfs_key {int /*<<< orphan*/  objectid; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*) ; 
 int FUNC1 (struct extent_buffer*) ; 
 scalar_t__ READA_NONE ; 
 scalar_t__ FUNC2 (struct extent_buffer*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,int) ; 
 int FUNC7 (struct extent_buffer*,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_path*,int) ; 
 scalar_t__ FUNC11 (struct extent_buffer*,int,struct btrfs_key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC13 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC15 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_fs_info*,struct btrfs_path*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct btrfs_root *root, struct btrfs_path *p,
		      struct extent_buffer **eb_ret, int level, int slot,
		      const struct btrfs_key *key)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	u64 blocknr;
	u64 gen;
	struct extent_buffer *b = *eb_ret;
	struct extent_buffer *tmp;
	struct btrfs_key first_key;
	int ret;
	int parent_level;

	blocknr = FUNC4(b, slot);
	gen = FUNC6(b, slot);
	parent_level = FUNC3(b);
	FUNC5(b, &first_key, slot);

	tmp = FUNC13(fs_info, blocknr);
	if (tmp) {
		/* first we do an atomic uptodate check */
		if (FUNC2(tmp, gen, 1) > 0) {
			/*
			 * Do extra check for first_key, eb can be stale due to
			 * being cached, read from scrub, or have multiple
			 * parents (shared tree blocks).
			 */
			if (FUNC11(tmp,
					parent_level - 1, &first_key, gen)) {
				FUNC14(tmp);
				return -EUCLEAN;
			}
			*eb_ret = tmp;
			return 0;
		}

		/* the pages were up to date, but we failed
		 * the generation number check.  Do a full
		 * read for the generation number that is correct.
		 * We must do this without dropping locks so
		 * we can trust our generation number
		 */
		FUNC9(p);

		/* now we're allowed to do a blocking uptodate check */
		ret = FUNC7(tmp, gen, parent_level - 1, &first_key);
		if (!ret) {
			*eb_ret = tmp;
			return 0;
		}
		FUNC14(tmp);
		FUNC8(p);
		return -EIO;
	}

	/*
	 * reduce lock contention at high levels
	 * of the btree by dropping locks before
	 * we read.  Don't release the lock on the current
	 * level because we need to walk this node to figure
	 * out which blocks to read.
	 */
	FUNC10(p, level + 1);
	FUNC9(p);

	if (p->reada != READA_NONE)
		FUNC16(fs_info, p, level, slot, key->objectid);

	ret = -EAGAIN;
	tmp = FUNC15(fs_info, blocknr, gen, parent_level - 1,
			      &first_key);
	if (!FUNC0(tmp)) {
		/*
		 * If the read above didn't mark this buffer up to date,
		 * it will never end up being up to date.  Set ret to EIO now
		 * and give up so that our caller doesn't loop forever
		 * on our EAGAINs.
		 */
		if (!FUNC12(tmp))
			ret = -EIO;
		FUNC14(tmp);
	} else {
		ret = FUNC1(tmp);
	}

	FUNC8(p);
	return ret;
}
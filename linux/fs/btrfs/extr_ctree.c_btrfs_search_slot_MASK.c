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
typedef  int u8 ;
struct extent_buffer {int dummy; } ;
struct btrfs_trans_handle {int dirty; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int lowest_level; int* slots; int /*<<< orphan*/  skip_release_on_error; int /*<<< orphan*/  leave_spinning; int /*<<< orphan*/  search_for_split; struct extent_buffer** nodes; scalar_t__* locks; int /*<<< orphan*/  skip_locking; scalar_t__ keep_locks; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int BTRFS_MAX_LEVEL ; 
 scalar_t__ BTRFS_READ_LOCK ; 
 scalar_t__ BTRFS_WRITE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*,struct extent_buffer*,int,struct extent_buffer**) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_path*) ; 
 struct extent_buffer* FUNC8 (struct btrfs_root*,struct btrfs_path*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct extent_buffer*) ; 
 int FUNC15 (struct extent_buffer*,struct btrfs_key const*,int,int*,int*) ; 
 int FUNC16 (struct btrfs_root*,struct btrfs_path*,struct extent_buffer**,int,int,struct btrfs_key const*) ; 
 int FUNC17 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*,struct extent_buffer*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC18 (struct btrfs_trans_handle*,struct btrfs_root*,struct extent_buffer*) ; 
 int FUNC19 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key const*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct btrfs_path*,int,int,int,int*) ; 

int FUNC21(struct btrfs_trans_handle *trans, struct btrfs_root *root,
		      const struct btrfs_key *key, struct btrfs_path *p,
		      int ins_len, int cow)
{
	struct extent_buffer *b;
	int slot;
	int ret;
	int err;
	int level;
	int lowest_unlock = 1;
	/* everything at write_lock_level or lower must be write locked */
	int write_lock_level = 0;
	u8 lowest_level = 0;
	int min_write_lock_level;
	int prev_cmp;

	lowest_level = p->lowest_level;
	FUNC3(lowest_level && ins_len > 0);
	FUNC3(p->nodes[0] != NULL);
	FUNC0(!cow && ins_len);

	if (ins_len < 0) {
		lowest_unlock = 2;

		/* when we are removing items, we might have to go up to level
		 * two as we update tree pointers  Make sure we keep write
		 * for those levels as well
		 */
		write_lock_level = 2;
	} else if (ins_len > 0) {
		/*
		 * for inserting items, make sure we have a write lock on
		 * level 1 so we can update keys
		 */
		write_lock_level = 1;
	}

	if (!cow)
		write_lock_level = -1;

	if (cow && (p->keep_locks || p->lowest_level))
		write_lock_level = BTRFS_MAX_LEVEL;

	min_write_lock_level = write_lock_level;

again:
	prev_cmp = -1;
	b = FUNC8(root, p, write_lock_level);
	if (FUNC1(b)) {
		ret = FUNC2(b);
		goto done;
	}

	while (b) {
		level = FUNC5(b);

		/*
		 * setup the path here so we can release it under lock
		 * contention with the cow code
		 */
		if (cow) {
			bool last_level = (level == (BTRFS_MAX_LEVEL - 1));

			/*
			 * if we don't really need to cow this block
			 * then we don't want to set the path blocking,
			 * so we test it here
			 */
			if (!FUNC18(trans, root, b)) {
				trans->dirty = true;
				goto cow_done;
			}

			/*
			 * must have write locks on this node and the
			 * parent
			 */
			if (level > write_lock_level ||
			    (level + 1 > write_lock_level &&
			    level + 1 < BTRFS_MAX_LEVEL &&
			    p->nodes[level + 1])) {
				write_lock_level = level + 1;
				FUNC7(p);
				goto again;
			}

			FUNC9(p);
			if (last_level)
				err = FUNC4(trans, root, b, NULL, 0,
						      &b);
			else
				err = FUNC4(trans, root, b,
						      p->nodes[level + 1],
						      p->slots[level + 1], &b);
			if (err) {
				ret = err;
				goto done;
			}
		}
cow_done:
		p->nodes[level] = b;
		/*
		 * Leave path with blocking locks to avoid massive
		 * lock context switch, this is made on purpose.
		 */

		/*
		 * we have a lock on b and as long as we aren't changing
		 * the tree, there is no way to for the items in b to change.
		 * It is safe to drop the lock on our parent before we
		 * go through the expensive btree search on b.
		 *
		 * If we're inserting or deleting (ins_len != 0), then we might
		 * be changing slot zero, which may require changing the parent.
		 * So, we can't drop the lock until after we know which slot
		 * we're operating on.
		 */
		if (!ins_len && !p->keep_locks) {
			int u = level + 1;

			if (u < BTRFS_MAX_LEVEL && p->locks[u]) {
				FUNC13(p->nodes[u], p->locks[u]);
				p->locks[u] = 0;
			}
		}

		ret = FUNC15(b, key, level, &prev_cmp, &slot);
		if (ret < 0)
			goto done;

		if (level != 0) {
			int dec = 0;
			if (ret && slot > 0) {
				dec = 1;
				slot -= 1;
			}
			p->slots[level] = slot;
			err = FUNC17(trans, root, p, b, level,
					     ins_len, &write_lock_level);
			if (err == -EAGAIN)
				goto again;
			if (err) {
				ret = err;
				goto done;
			}
			b = p->nodes[level];
			slot = p->slots[level];

			/*
			 * slot 0 is special, if we change the key
			 * we have to update the parent pointer
			 * which means we must have a write lock
			 * on the parent
			 */
			if (slot == 0 && ins_len &&
			    write_lock_level < level + 1) {
				write_lock_level = level + 1;
				FUNC7(p);
				goto again;
			}

			FUNC20(p, level, lowest_unlock,
				  min_write_lock_level, &write_lock_level);

			if (level == lowest_level) {
				if (dec)
					p->slots[level]++;
				goto done;
			}

			err = FUNC16(root, p, &b, level,
						    slot, key);
			if (err == -EAGAIN)
				goto again;
			if (err) {
				ret = err;
				goto done;
			}

			if (!p->skip_locking) {
				level = FUNC5(b);
				if (level <= write_lock_level) {
					if (!FUNC14(b)) {
						FUNC9(p);
						FUNC10(b);
					}
					p->locks[level] = BTRFS_WRITE_LOCK;
				} else {
					if (!FUNC12(b)) {
						FUNC9(p);
						FUNC11(b);
					}
					p->locks[level] = BTRFS_READ_LOCK;
				}
				p->nodes[level] = b;
			}
		} else {
			p->slots[level] = slot;
			if (ins_len > 0 &&
			    FUNC6(b) < ins_len) {
				if (write_lock_level < 1) {
					write_lock_level = 1;
					FUNC7(p);
					goto again;
				}

				FUNC9(p);
				err = FUNC19(trans, root, key,
						 p, ins_len, ret == 0);

				FUNC0(err > 0);
				if (err) {
					ret = err;
					goto done;
				}
			}
			if (!p->search_for_split)
				FUNC20(p, level, lowest_unlock,
					  min_write_lock_level, NULL);
			goto done;
		}
	}
	ret = 1;
done:
	/*
	 * we don't really know what they plan on doing with the path
	 * from here on, so for now just mark it as blocking
	 */
	if (!p->leave_spinning)
		FUNC9(p);
	if (ret < 0 && !p->skip_release_on_error)
		FUNC7(p);
	return ret;
}
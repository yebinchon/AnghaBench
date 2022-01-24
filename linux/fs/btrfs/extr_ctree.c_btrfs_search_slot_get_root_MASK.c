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
struct btrfs_root {struct extent_buffer* commit_root; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int skip_locking; int* locks; struct extent_buffer** nodes; scalar_t__ need_commit_sem; scalar_t__ search_commit_root; } ;
struct btrfs_fs_info {int /*<<< orphan*/  commit_root_sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTRFS_MAX_LEVEL ; 
 int BTRFS_READ_LOCK ; 
 int BTRFS_WRITE_LOCK ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct extent_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 struct extent_buffer* FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC4 (struct btrfs_root*) ; 
 struct extent_buffer* FUNC5 (struct btrfs_root*) ; 
 struct extent_buffer* FUNC6 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct extent_buffer *FUNC12(struct btrfs_root *root,
							struct btrfs_path *p,
							int write_lock_level)
{
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct extent_buffer *b;
	int root_lock;
	int level = 0;

	/* We try very hard to do read locks on the root */
	root_lock = BTRFS_READ_LOCK;

	if (p->search_commit_root) {
		/*
		 * The commit roots are read only so we always do read locks,
		 * and we always must hold the commit_root_sem when doing
		 * searches on them, the only exception is send where we don't
		 * want to block transaction commits for a long time, so
		 * we need to clone the commit root in order to avoid races
		 * with transaction commits that create a snapshot of one of
		 * the roots used by a send operation.
		 */
		if (p->need_commit_sem) {
			FUNC8(&fs_info->commit_root_sem);
			b = FUNC2(root->commit_root);
			FUNC11(&fs_info->commit_root_sem);
			if (!b)
				return FUNC1(-ENOMEM);

		} else {
			b = root->commit_root;
			FUNC9(b);
		}
		level = FUNC3(b);
		/*
		 * Ensure that all callers have set skip_locking when
		 * p->search_commit_root = 1.
		 */
		FUNC0(p->skip_locking == 1);

		goto out;
	}

	if (p->skip_locking) {
		b = FUNC6(root);
		level = FUNC3(b);
		goto out;
	}

	/*
	 * If the level is set to maximum, we can skip trying to get the read
	 * lock.
	 */
	if (write_lock_level < BTRFS_MAX_LEVEL) {
		/*
		 * We don't know the level of the root node until we actually
		 * have it read locked
		 */
		b = FUNC5(root);
		level = FUNC3(b);
		if (level > write_lock_level)
			goto out;

		/* Whoops, must trade for write lock */
		FUNC7(b);
		FUNC10(b);
	}

	b = FUNC4(root);
	root_lock = BTRFS_WRITE_LOCK;

	/* The level might have changed, check again */
	level = FUNC3(b);

out:
	p->nodes[level] = b;
	if (!p->skip_locking)
		p->locks[level] = root_lock;
	/*
	 * Callers are responsible for dropping b's references.
	 */
	return b;
}
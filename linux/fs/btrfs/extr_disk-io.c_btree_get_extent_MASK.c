#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct page {int dummy; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {int /*<<< orphan*/  bdev; scalar_t__ block_start; void* block_len; void* len; scalar_t__ start; } ;
struct btrfs_inode {struct extent_map_tree extent_tree; TYPE_1__* root; } ;
struct btrfs_fs_info {TYPE_2__* fs_devices; } ;
struct TYPE_4__ {int /*<<< orphan*/  latest_bdev; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int EEXIST ; 
 int EIO ; 
 int ENOMEM ; 
 struct extent_map* FUNC0 (int) ; 
 int FUNC1 (struct extent_map_tree*,struct extent_map*,int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map*) ; 
 struct extent_map* FUNC4 (struct extent_map_tree*,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

struct extent_map *FUNC9(struct btrfs_inode *inode,
		struct page *page, size_t pg_offset, u64 start, u64 len,
		int create)
{
	struct btrfs_fs_info *fs_info = inode->root->fs_info;
	struct extent_map_tree *em_tree = &inode->extent_tree;
	struct extent_map *em;
	int ret;

	FUNC5(&em_tree->lock);
	em = FUNC4(em_tree, start, len);
	if (em) {
		em->bdev = fs_info->fs_devices->latest_bdev;
		FUNC6(&em_tree->lock);
		goto out;
	}
	FUNC6(&em_tree->lock);

	em = FUNC2();
	if (!em) {
		em = FUNC0(-ENOMEM);
		goto out;
	}
	em->start = 0;
	em->len = (u64)-1;
	em->block_len = (u64)-1;
	em->block_start = 0;
	em->bdev = fs_info->fs_devices->latest_bdev;

	FUNC7(&em_tree->lock);
	ret = FUNC1(em_tree, em, 0);
	if (ret == -EEXIST) {
		FUNC3(em);
		em = FUNC4(em_tree, start, len);
		if (!em)
			em = FUNC0(-EIO);
	} else if (ret) {
		FUNC3(em);
		em = FUNC0(ret);
	}
	FUNC8(&em_tree->lock);

out:
	return em;
}
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
typedef  scalar_t__ u64 ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {unsigned long flags; scalar_t__ generation; scalar_t__ start; scalar_t__ len; scalar_t__ block_start; scalar_t__ orig_start; scalar_t__ block_len; scalar_t__ ram_bytes; void* orig_block_len; int /*<<< orphan*/  compress_type; int /*<<< orphan*/  bdev; int /*<<< orphan*/  list; } ;
struct btrfs_inode {struct extent_map_tree extent_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXTENT_FLAG_COMPRESSED ; 
 int /*<<< orphan*/  EXTENT_FLAG_LOGGING ; 
 int /*<<< orphan*/  EXTENT_FLAG_PINNED ; 
 scalar_t__ EXTENT_MAP_LAST_BYTE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct extent_map_tree*,struct extent_map*,int) ; 
 struct extent_map* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC5 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct extent_map* FUNC8 (struct extent_map_tree*,scalar_t__,scalar_t__) ; 
 void* FUNC9 (scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_map_tree*,struct extent_map*) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_map_tree*,struct extent_map*,struct extent_map*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(struct btrfs_inode *inode, u64 start, u64 end,
			     int skip_pinned)
{
	struct extent_map *em;
	struct extent_map *split = NULL;
	struct extent_map *split2 = NULL;
	struct extent_map_tree *em_tree = &inode->extent_tree;
	u64 len = end - start + 1;
	u64 gen;
	int ret;
	int testend = 1;
	unsigned long flags;
	int compressed = 0;
	bool modified;

	FUNC1(end < start);
	if (end == (u64)-1) {
		len = (u64)-1;
		testend = 0;
	}
	while (1) {
		int no_splits = 0;

		modified = false;
		if (!split)
			split = FUNC3();
		if (!split2)
			split2 = FUNC3();
		if (!split || !split2)
			no_splits = 1;

		FUNC13(&em_tree->lock);
		em = FUNC8(em_tree, start, len);
		if (!em) {
			FUNC14(&em_tree->lock);
			break;
		}
		flags = em->flags;
		gen = em->generation;
		if (skip_pinned && FUNC12(EXTENT_FLAG_PINNED, &em->flags)) {
			if (testend && em->start + em->len >= start + len) {
				FUNC6(em);
				FUNC14(&em_tree->lock);
				break;
			}
			start = em->start + em->len;
			if (testend)
				len = start + len - (em->start + em->len);
			FUNC6(em);
			FUNC14(&em_tree->lock);
			continue;
		}
		compressed = FUNC12(EXTENT_FLAG_COMPRESSED, &em->flags);
		FUNC4(EXTENT_FLAG_PINNED, &em->flags);
		FUNC4(EXTENT_FLAG_LOGGING, &flags);
		modified = !FUNC7(&em->list);
		if (no_splits)
			goto next;

		if (em->start < start) {
			split->start = em->start;
			split->len = start - em->start;

			if (em->block_start < EXTENT_MAP_LAST_BYTE) {
				split->orig_start = em->orig_start;
				split->block_start = em->block_start;

				if (compressed)
					split->block_len = em->block_len;
				else
					split->block_len = split->len;
				split->orig_block_len = FUNC9(split->block_len,
						em->orig_block_len);
				split->ram_bytes = em->ram_bytes;
			} else {
				split->orig_start = split->start;
				split->block_len = 0;
				split->block_start = em->block_start;
				split->orig_block_len = 0;
				split->ram_bytes = split->len;
			}

			split->generation = gen;
			split->bdev = em->bdev;
			split->flags = flags;
			split->compress_type = em->compress_type;
			FUNC11(em_tree, em, split, modified);
			FUNC6(split);
			split = split2;
			split2 = NULL;
		}
		if (testend && em->start + em->len > start + len) {
			u64 diff = start + len - em->start;

			split->start = start + len;
			split->len = em->start + em->len - (start + len);
			split->bdev = em->bdev;
			split->flags = flags;
			split->compress_type = em->compress_type;
			split->generation = gen;

			if (em->block_start < EXTENT_MAP_LAST_BYTE) {
				split->orig_block_len = FUNC9(em->block_len,
						    em->orig_block_len);

				split->ram_bytes = em->ram_bytes;
				if (compressed) {
					split->block_len = em->block_len;
					split->block_start = em->block_start;
					split->orig_start = em->orig_start;
				} else {
					split->block_len = split->len;
					split->block_start = em->block_start
						+ diff;
					split->orig_start = em->orig_start;
				}
			} else {
				split->ram_bytes = split->len;
				split->orig_start = split->start;
				split->block_len = 0;
				split->block_start = em->block_start;
				split->orig_block_len = 0;
			}

			if (FUNC5(em)) {
				FUNC11(em_tree, em, split,
						       modified);
			} else {
				ret = FUNC2(em_tree, split,
							 modified);
				FUNC0(ret == 0); /* Logic error */
			}
			FUNC6(split);
			split = NULL;
		}
next:
		if (FUNC5(em))
			FUNC10(em_tree, em);
		FUNC14(&em_tree->lock);

		/* once for us */
		FUNC6(em);
		/* once for the tree*/
		FUNC6(em);
	}
	if (split)
		FUNC6(split);
	if (split2)
		FUNC6(split2);
}
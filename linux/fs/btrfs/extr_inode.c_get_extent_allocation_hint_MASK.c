#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ block_start; } ;
struct TYPE_2__ {struct extent_map_tree extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ EXTENT_MAP_LAST_BYTE ; 
 int /*<<< orphan*/  FUNC1 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct extent_map* FUNC4 (struct extent_map_tree*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static u64 FUNC5(struct inode *inode, u64 start,
				      u64 num_bytes)
{
	struct extent_map_tree *em_tree = &FUNC0(inode)->extent_tree;
	struct extent_map *em;
	u64 alloc_hint = 0;

	FUNC2(&em_tree->lock);
	em = FUNC4(em_tree, start, num_bytes);
	if (em) {
		/*
		 * if block start isn't an actual block number then find the
		 * first block in this inode and use that as a hint.  If that
		 * block is also bogus then just don't worry about it.
		 */
		if (em->block_start >= EXTENT_MAP_LAST_BYTE) {
			FUNC1(em);
			em = FUNC4(em_tree, 0, 0);
			if (em && em->block_start < EXTENT_MAP_LAST_BYTE)
				alloc_hint = em->block_start;
			if (em)
				FUNC1(em);
		} else {
			alloc_hint = em->block_start;
			FUNC1(em);
		}
	}
	FUNC3(&em_tree->lock);

	return alloc_hint;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct extent_state {int dummy; } ;
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct TYPE_3__ {struct extent_io_tree io_tree; struct extent_map_tree extent_tree; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct extent_map*) ; 
 scalar_t__ PAGE_SIZE ; 
 struct extent_map* FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ; 
 struct extent_map* FUNC4 (struct extent_map_tree*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**) ; 

__attribute__((used)) static struct extent_map *FUNC8(struct inode *inode, u64 start)
{
	struct extent_map_tree *em_tree = &FUNC0(inode)->extent_tree;
	struct extent_io_tree *io_tree = &FUNC0(inode)->io_tree;
	struct extent_map *em;
	u64 len = PAGE_SIZE;

	/*
	 * hopefully we have this extent in the tree already, try without
	 * the full extent lock
	 */
	FUNC5(&em_tree->lock);
	em = FUNC4(em_tree, start, len);
	FUNC6(&em_tree->lock);

	if (!em) {
		struct extent_state *cached = NULL;
		u64 end = start + len - 1;

		/* get the big lock and read metadata off disk */
		FUNC3(io_tree, start, end, &cached);
		em = FUNC2(FUNC0(inode), NULL, 0, start, len, 0);
		FUNC7(io_tree, start, end, &cached);

		if (FUNC1(em))
			return NULL;
	}

	return em;
}
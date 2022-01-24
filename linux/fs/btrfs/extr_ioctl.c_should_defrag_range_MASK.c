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
typedef  scalar_t__ u32 ;
struct inode {int dummy; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ len; } ;

/* Variables and functions */
 scalar_t__ EXTENT_MAP_LAST_BYTE ; 
 int FUNC0 (struct inode*,struct extent_map*) ; 
 struct extent_map* FUNC1 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_map*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, u64 start, u32 thresh,
			       u64 *last_len, u64 *skip, u64 *defrag_end,
			       int compress)
{
	struct extent_map *em;
	int ret = 1;
	bool next_mergeable = true;
	bool prev_mergeable = true;

	/*
	 * make sure that once we start defragging an extent, we keep on
	 * defragging it
	 */
	if (start < *defrag_end)
		return 1;

	*skip = 0;

	em = FUNC1(inode, start);
	if (!em)
		return 0;

	/* this will cover holes, and inline extents */
	if (em->block_start >= EXTENT_MAP_LAST_BYTE) {
		ret = 0;
		goto out;
	}

	if (!*defrag_end)
		prev_mergeable = false;

	next_mergeable = FUNC0(inode, em);
	/*
	 * we hit a real extent, if it is big or the next extent is not a
	 * real extent, don't bother defragging it
	 */
	if (!compress && (*last_len == 0 || *last_len >= thresh) &&
	    (em->len >= thresh || (!next_mergeable && !prev_mergeable)))
		ret = 0;
out:
	/*
	 * last_len ends up being a counter of how many bytes we've defragged.
	 * every time we choose not to defrag an extent, we reset *last_len
	 * so that the next tiny extent will force a defrag.
	 *
	 * The end result of this is that tiny extents before a single big
	 * extent will force at least part of that big extent to be defragged.
	 */
	if (ret) {
		*defrag_end = FUNC2(em);
	} else {
		*last_len = 0;
		*skip = FUNC2(em);
		*defrag_end = 0;
	}

	FUNC3(em);
	return ret;
}
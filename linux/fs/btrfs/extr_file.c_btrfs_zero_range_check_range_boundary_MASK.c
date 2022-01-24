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
struct inode {int dummy; } ;
struct extent_map {scalar_t__ block_start; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  EXTENT_FLAG_PREALLOC ; 
 scalar_t__ EXTENT_MAP_HOLE ; 
 scalar_t__ FUNC1 (struct extent_map*) ; 
 int FUNC2 (struct extent_map*) ; 
 int RANGE_BOUNDARY_HOLE ; 
 int RANGE_BOUNDARY_PREALLOC_EXTENT ; 
 int RANGE_BOUNDARY_WRITTEN_EXTENT ; 
 struct extent_map* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode,
						 u64 offset)
{
	const u64 sectorsize = FUNC4(inode);
	struct extent_map *em;
	int ret;

	offset = FUNC6(offset, sectorsize);
	em = FUNC3(FUNC0(inode), NULL, 0, offset, sectorsize, 0);
	if (FUNC1(em))
		return FUNC2(em);

	if (em->block_start == EXTENT_MAP_HOLE)
		ret = RANGE_BOUNDARY_HOLE;
	else if (FUNC7(EXTENT_FLAG_PREALLOC, &em->flags))
		ret = RANGE_BOUNDARY_PREALLOC_EXTENT;
	else
		ret = RANGE_BOUNDARY_WRITTEN_EXTENT;

	FUNC5(em);
	return ret;
}
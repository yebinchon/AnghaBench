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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ start; scalar_t__ len; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ EXTENT_MAP_HOLE ; 
 scalar_t__ FUNC1 (struct extent_map*) ; 
 int FUNC2 (struct extent_map*) ; 
 struct extent_map* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, u64 *start, u64 *len)
{
	struct btrfs_fs_info *fs_info = FUNC4(inode->i_sb);
	struct extent_map *em;
	int ret = 0;

	em = FUNC3(FUNC0(inode), NULL, 0,
			      FUNC6(*start, fs_info->sectorsize),
			      FUNC7(*len, fs_info->sectorsize), 0);
	if (FUNC1(em))
		return FUNC2(em);

	/* Hole or vacuum extent(only exists in no-hole mode) */
	if (em->block_start == EXTENT_MAP_HOLE) {
		ret = 1;
		*len = em->start + em->len > *start + *len ?
		       0 : *start + *len - em->start - em->len;
		*start = em->start + em->len;
	}
	FUNC5(em);
	return ret;
}
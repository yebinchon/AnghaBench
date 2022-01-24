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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_sb; } ;
struct erofs_sb_info {int dummy; } ;
struct erofs_map_blocks {scalar_t__ m_la; scalar_t__ m_plen; scalar_t__ m_pa; scalar_t__ m_llen; int /*<<< orphan*/  m_flags; } ;
struct erofs_inode {scalar_t__ datalayout; scalar_t__ inode_isize; scalar_t__ xattr_isize; int /*<<< orphan*/  nid; scalar_t__ raw_blkaddr; } ;
typedef  scalar_t__ erofs_blk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int EFSCORRUPTED ; 
 int EIO ; 
 struct erofs_inode* FUNC2 (struct inode*) ; 
 scalar_t__ EROFS_INODE_FLAT_INLINE ; 
 int /*<<< orphan*/  EROFS_MAP_MAPPED ; 
 int /*<<< orphan*/  EROFS_MAP_META ; 
 struct erofs_sb_info* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC7 (struct erofs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct erofs_map_blocks*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct erofs_map_blocks*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode *inode,
				     struct erofs_map_blocks *map,
				     int flags)
{
	int err = 0;
	erofs_blk_t nblocks, lastblk;
	u64 offset = map->m_la;
	struct erofs_inode *vi = FUNC2(inode);
	bool tailendpacking = (vi->datalayout == EROFS_INODE_FLAT_INLINE);

	FUNC8(inode, map, flags);

	nblocks = FUNC1(inode->i_size, PAGE_SIZE);
	lastblk = nblocks - tailendpacking;

	if (offset >= inode->i_size) {
		/* leave out-of-bound access unmapped */
		map->m_flags = 0;
		map->m_plen = 0;
		goto out;
	}

	/* there is no hole in flatmode */
	map->m_flags = EROFS_MAP_MAPPED;

	if (offset < FUNC4(lastblk)) {
		map->m_pa = FUNC4(vi->raw_blkaddr) + map->m_la;
		map->m_plen = FUNC4(lastblk) - offset;
	} else if (tailendpacking) {
		/* 2 - inode inline B: inode, [xattrs], inline last blk... */
		struct erofs_sb_info *sbi = FUNC3(inode->i_sb);

		map->m_pa = FUNC7(sbi, vi->nid) + vi->inode_isize +
			vi->xattr_isize + FUNC5(map->m_la);
		map->m_plen = inode->i_size - offset;

		/* inline data should be located in one meta block */
		if (FUNC5(map->m_pa) + map->m_plen > PAGE_SIZE) {
			FUNC6(inode->i_sb,
				  "inline data cross block boundary @ nid %llu",
				  vi->nid);
			FUNC0(1);
			err = -EFSCORRUPTED;
			goto err_out;
		}

		map->m_flags |= EROFS_MAP_META;
	} else {
		FUNC6(inode->i_sb,
			  "internal error @ nid: %llu (size %llu), m_la 0x%llx",
			  vi->nid, inode->i_size, map->m_la);
		FUNC0(1);
		err = -EIO;
		goto err_out;
	}

out:
	map->m_llen = map->m_plen;

err_out:
	FUNC9(inode, map, flags, 0);
	return err;
}
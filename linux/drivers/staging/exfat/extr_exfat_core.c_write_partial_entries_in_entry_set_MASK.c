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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct fs_info_t {int cluster_size; } ;
struct entry_set_cache_t {void* __buf; int num_entries; scalar_t__ sector; scalar_t__ offset; int /*<<< orphan*/  alloc_flag; } ;
struct dentry_t {int dummy; } ;
struct chain_t {int size; int /*<<< orphan*/  dir; int /*<<< orphan*/  flags; } ;
struct bd_info_t {scalar_t__ sector_size_bits; scalar_t__ sector_size_mask; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {struct bd_info_t bd_info; struct fs_info_t fs_info; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 scalar_t__ FFS_ERROR ; 
 scalar_t__ FFS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*,struct entry_set_cache_t*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct super_block*,struct chain_t*,scalar_t__,int /*<<< orphan*/ *) ; 

s32 FUNC5(struct super_block *sb,
	struct entry_set_cache_t *es, struct dentry_t *ep, u32 count)
{
	s32 ret, byte_offset, off;
	u32 clu = 0;
	sector_t sec;
	struct fs_info_t *p_fs = &(FUNC0(sb)->fs_info);
	struct bd_info_t *p_bd = &(FUNC0(sb)->bd_info);
	struct chain_t dir;

	/* vaidity check */
	if (ep + count  > ((struct dentry_t *)&(es->__buf)) + es->num_entries)
		return FFS_ERROR;

	dir.dir = FUNC1(es->sector);
	dir.flags = es->alloc_flag;
	dir.size = 0xffffffff;		/* XXX */

	byte_offset = (es->sector - FUNC2(dir.dir)) <<
			p_bd->sector_size_bits;
	byte_offset += ((void **)ep - &(es->__buf)) + es->offset;

	ret = FUNC4(sb, &dir, byte_offset, &clu);
	if (ret != FFS_SUCCESS)
		return ret;

	/* byte offset in cluster */
	byte_offset &= p_fs->cluster_size - 1;

	/* byte offset in sector    */
	off = byte_offset & p_bd->sector_size_mask;

	/* sector offset in cluster */
	sec = byte_offset >> p_bd->sector_size_bits;
	sec += FUNC2(clu);
	return FUNC3(sb, es, sec, off, count);
}
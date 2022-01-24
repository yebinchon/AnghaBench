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
typedef  unsigned int u32 ;
struct super_block {int dummy; } ;
struct adfs_sb_info {int s_map_size; unsigned int s_ids_per_zone; int /*<<< orphan*/  s_map2blk; } ;

/* Variables and functions */
 unsigned int ADFS_ROOT_FRAG ; 
 struct adfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  adfs_map_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct adfs_sb_info*,unsigned int,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (int,int /*<<< orphan*/ ) ; 

int FUNC6(struct super_block *sb, u32 frag_id, unsigned int offset)
{
	struct adfs_sb_info *asb = FUNC0(sb);
	unsigned int zone, mapoff;
	int result;

	/*
	 * map & root fragment is special - it starts in the center of the
	 * disk.  The other fragments start at zone (frag / ids_per_zone)
	 */
	if (frag_id == ADFS_ROOT_FRAG)
		zone = asb->s_map_size >> 1;
	else
		zone = frag_id / asb->s_ids_per_zone;

	if (zone >= asb->s_map_size)
		goto bad_fragment;

	/* Convert sector offset to map offset */
	mapoff = FUNC5(offset, -asb->s_map2blk);

	FUNC2(&adfs_map_lock);
	result = FUNC4(asb, zone, frag_id, mapoff);
	FUNC3(&adfs_map_lock);

	if (result > 0) {
		unsigned int secoff;

		/* Calculate sector offset into map block */
		secoff = offset - FUNC5(mapoff, asb->s_map2blk);
		return secoff + FUNC5(result, asb->s_map2blk);
	}

	FUNC1(sb, "fragment 0x%04x at offset %d not found in map",
		   frag_id, offset);
	return 0;

bad_fragment:
	FUNC1(sb, "invalid fragment 0x%04x (zone = %d, max = %d)",
		   frag_id, zone, asb->s_map_size);
	return 0;
}
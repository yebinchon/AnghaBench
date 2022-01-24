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
struct extent_buffer {int dummy; } ;
struct btrfs_inode_extref {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct extent_buffer*,struct btrfs_inode_extref*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,struct btrfs_inode_extref*) ; 
 unsigned long FUNC2 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC3 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC4 (struct extent_buffer*,char const*,unsigned long,int) ; 

struct btrfs_inode_extref *FUNC5(
		struct extent_buffer *leaf, int slot, u64 ref_objectid,
		const char *name, int name_len)
{
	struct btrfs_inode_extref *extref;
	unsigned long ptr;
	unsigned long name_ptr;
	u32 item_size;
	u32 cur_offset = 0;
	int ref_name_len;

	item_size = FUNC3(leaf, slot);
	ptr = FUNC2(leaf, slot);

	/*
	 * Search all extended backrefs in this item. We're only
	 * looking through any collisions so most of the time this is
	 * just going to compare against one buffer. If all is well,
	 * we'll return success and the inode ref object.
	 */
	while (cur_offset < item_size) {
		extref = (struct btrfs_inode_extref *) (ptr + cur_offset);
		name_ptr = (unsigned long)(&extref->name);
		ref_name_len = FUNC0(leaf, extref);

		if (ref_name_len == name_len &&
		    FUNC1(leaf, extref) == ref_objectid &&
		    (FUNC4(leaf, name, name_ptr, name_len) == 0))
			return extref;

		cur_offset += ref_name_len + sizeof(*extref);
	}
	return NULL;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_inode_ref {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*,struct btrfs_inode_ref*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_inode_ref*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,char*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct extent_buffer *eb, unsigned long ref_ptr,
			  u32 *namelen, char **name, u64 *index)
{
	struct btrfs_inode_ref *ref;

	ref = (struct btrfs_inode_ref *)ref_ptr;

	*namelen = FUNC1(eb, ref);
	*name = FUNC2(*namelen, GFP_NOFS);
	if (*name == NULL)
		return -ENOMEM;

	FUNC3(eb, *name, (unsigned long)(ref + 1), *namelen);

	if (index)
		*index = FUNC0(eb, ref);

	return 0;
}
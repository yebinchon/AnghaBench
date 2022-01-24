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
struct extent_buffer {int dummy; } ;
struct btrfs_extent_data_ref {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 
 scalar_t__ FUNC2 (struct extent_buffer*,struct btrfs_extent_data_ref*) ; 

__attribute__((used)) static int FUNC3(struct extent_buffer *leaf,
				 struct btrfs_extent_data_ref *ref,
				 u64 root_objectid, u64 owner, u64 offset)
{
	if (FUNC2(leaf, ref) != root_objectid ||
	    FUNC0(leaf, ref) != owner ||
	    FUNC1(leaf, ref) != offset)
		return 0;
	return 1;
}
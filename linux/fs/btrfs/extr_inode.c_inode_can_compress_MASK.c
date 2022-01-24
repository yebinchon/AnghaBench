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
struct inode {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATACOW ; 
 int BTRFS_INODE_NODATASUM ; 

__attribute__((used)) static inline bool FUNC1(struct inode *inode)
{
	if (FUNC0(inode)->flags & BTRFS_INODE_NODATACOW ||
	    FUNC0(inode)->flags & BTRFS_INODE_NODATASUM)
		return false;
	return true;
}
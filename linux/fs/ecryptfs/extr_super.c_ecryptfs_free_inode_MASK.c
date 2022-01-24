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
struct inode {int dummy; } ;
struct ecryptfs_inode_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ecryptfs_inode_info_cache ; 
 struct ecryptfs_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ecryptfs_inode_info*) ; 

__attribute__((used)) static void FUNC2(struct inode *inode)
{
	struct ecryptfs_inode_info *inode_info;
	inode_info = FUNC0(inode);

	FUNC1(ecryptfs_inode_info_cache, inode_info);
}
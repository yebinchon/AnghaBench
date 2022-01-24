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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ecryptfs_inode_info {struct inode vfs_inode; int /*<<< orphan*/ * lower_file; int /*<<< orphan*/  lower_file_count; int /*<<< orphan*/  lower_file_mutex; int /*<<< orphan*/  crypt_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ecryptfs_inode_info_cache ; 
 struct ecryptfs_inode_info* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ecryptfs_inode_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct inode *FUNC6(struct super_block *sb)
{
	struct ecryptfs_inode_info *inode_info;
	struct inode *inode = NULL;

	inode_info = FUNC2(ecryptfs_inode_info_cache, GFP_KERNEL);
	if (FUNC5(!inode_info))
		goto out;
	if (FUNC1(&inode_info->crypt_stat)) {
		FUNC3(ecryptfs_inode_info_cache, inode_info);
		goto out;
	}
	FUNC4(&inode_info->lower_file_mutex);
	FUNC0(&inode_info->lower_file_count, 0);
	inode_info->lower_file = NULL;
	inode = &inode_info->vfs_inode;
out:
	return inode;
}
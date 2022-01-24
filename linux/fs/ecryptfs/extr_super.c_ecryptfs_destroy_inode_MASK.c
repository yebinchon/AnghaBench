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
struct ecryptfs_inode_info {int /*<<< orphan*/  crypt_stat; int /*<<< orphan*/  lower_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ecryptfs_inode_info* FUNC2 (struct inode*) ; 

__attribute__((used)) static void FUNC3(struct inode *inode)
{
	struct ecryptfs_inode_info *inode_info;

	inode_info = FUNC2(inode);
	FUNC0(inode_info->lower_file);
	FUNC1(&inode_info->crypt_stat);
}
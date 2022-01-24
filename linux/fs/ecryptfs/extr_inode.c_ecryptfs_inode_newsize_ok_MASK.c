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
struct ecryptfs_crypt_stat {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct ecryptfs_crypt_stat crypt_stat; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct ecryptfs_crypt_stat*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, loff_t offset)
{
	struct ecryptfs_crypt_stat *crypt_stat;
	loff_t lower_oldsize, lower_newsize;

	crypt_stat = &FUNC0(inode)->crypt_stat;
	lower_oldsize = FUNC3(crypt_stat,
						 FUNC1(inode));
	lower_newsize = FUNC3(crypt_stat, offset);
	if (lower_newsize > lower_oldsize) {
		/*
		 * The eCryptfs inode and the new *lower* size are mixed here
		 * because we may not have the lower i_mutex held and/or it may
		 * not be appropriate to call inode_newsize_ok() with inodes
		 * from other filesystems.
		 */
		return FUNC2(inode, lower_newsize);
	}

	return 0;
}
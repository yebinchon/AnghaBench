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
struct ecryptfs_crypt_stat {int flags; } ;
struct TYPE_2__ {struct ecryptfs_crypt_stat crypt_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ECRYPTFS_ENCRYPTED ; 
 int ECRYPTFS_METADATA_IN_XATTR ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*) ; 

int FUNC4(struct inode *ecryptfs_inode)
{
	struct ecryptfs_crypt_stat *crypt_stat;

	crypt_stat = &FUNC1(ecryptfs_inode)->crypt_stat;
	FUNC0(!(crypt_stat->flags & ECRYPTFS_ENCRYPTED));
	if (crypt_stat->flags & ECRYPTFS_METADATA_IN_XATTR)
		return FUNC3(ecryptfs_inode);
	else
		return FUNC2(ecryptfs_inode);
}
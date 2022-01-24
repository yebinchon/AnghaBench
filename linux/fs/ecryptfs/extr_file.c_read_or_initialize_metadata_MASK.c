#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ecryptfs_mount_crypt_stat {int flags; } ;
struct ecryptfs_crypt_stat {int flags; int /*<<< orphan*/  cs_mutex; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {struct ecryptfs_crypt_stat crypt_stat; } ;
struct TYPE_3__ {struct ecryptfs_mount_crypt_stat mount_crypt_stat; } ;

/* Variables and functions */
 int ECRYPTFS_ENCRYPTED ; 
 int ECRYPTFS_I_SIZE_INITIALIZED ; 
 int ECRYPTFS_KEY_VALID ; 
 int ECRYPTFS_PLAINTEXT_PASSTHROUGH_ENABLED ; 
 int ECRYPTFS_POLICY_APPLIED ; 
 int ECRYPTFS_XATTR_METADATA_ENABLED ; 
 int EIO ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_2__* FUNC3 (struct inode*) ; 
 int FUNC4 (struct dentry*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dentry *dentry)
{
	struct inode *inode = FUNC0(dentry);
	struct ecryptfs_mount_crypt_stat *mount_crypt_stat;
	struct ecryptfs_crypt_stat *crypt_stat;
	int rc;

	crypt_stat = &FUNC3(inode)->crypt_stat;
	mount_crypt_stat = &FUNC5(
						inode->i_sb)->mount_crypt_stat;
	FUNC7(&crypt_stat->cs_mutex);

	if (crypt_stat->flags & ECRYPTFS_POLICY_APPLIED &&
	    crypt_stat->flags & ECRYPTFS_KEY_VALID) {
		rc = 0;
		goto out;
	}

	rc = FUNC4(dentry);
	if (!rc)
		goto out;

	if (mount_crypt_stat->flags & ECRYPTFS_PLAINTEXT_PASSTHROUGH_ENABLED) {
		crypt_stat->flags &= ~(ECRYPTFS_I_SIZE_INITIALIZED
				       | ECRYPTFS_ENCRYPTED);
		rc = 0;
		goto out;
	}

	if (!(mount_crypt_stat->flags & ECRYPTFS_XATTR_METADATA_ENABLED) &&
	    !FUNC6(FUNC2(inode))) {
		rc = FUNC1(dentry, inode);
		if (!rc)
			goto out;
	}

	rc = -EIO;
out:
	FUNC8(&crypt_stat->cs_mutex);
	return rc;
}
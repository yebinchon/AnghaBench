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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ecryptfs_mount_crypt_stat {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct ecryptfs_mount_crypt_stat mount_crypt_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct dentry*) ; 
 int FUNC6 (char**,size_t*,struct ecryptfs_mount_crypt_stat*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct dentry* FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (struct dentry*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct dentry*,char*) ; 

__attribute__((used)) static int FUNC16(struct inode *dir, struct dentry *dentry,
			    const char *symname)
{
	int rc;
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;
	char *encoded_symname;
	size_t encoded_symlen;
	struct ecryptfs_mount_crypt_stat *mount_crypt_stat = NULL;

	lower_dentry = FUNC5(dentry);
	FUNC3(lower_dentry);
	lower_dir_dentry = FUNC12(lower_dentry);
	mount_crypt_stat = &FUNC8(
		dir->i_sb)->mount_crypt_stat;
	rc = FUNC6(&encoded_symname,
						  &encoded_symlen,
						  mount_crypt_stat, symname,
						  FUNC13(symname));
	if (rc)
		goto out_lock;
	rc = FUNC15(FUNC1(lower_dir_dentry), lower_dentry,
			 encoded_symname);
	FUNC11(encoded_symname);
	if (rc || FUNC2(lower_dentry))
		goto out_lock;
	rc = FUNC7(lower_dentry, dentry, dir->i_sb);
	if (rc)
		goto out_lock;
	FUNC9(dir, FUNC1(lower_dir_dentry));
	FUNC10(dir, FUNC1(lower_dir_dentry));
out_lock:
	FUNC14(lower_dir_dentry);
	FUNC4(lower_dentry);
	if (FUNC2(dentry))
		FUNC0(dentry);
	return rc;
}
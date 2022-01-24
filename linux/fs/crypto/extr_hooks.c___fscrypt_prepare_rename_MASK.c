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
struct dentry {int d_flags; } ;

/* Variables and functions */
 int DCACHE_ENCRYPTED_NAME ; 
 int ENOKEY ; 
 int EXDEV ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 unsigned int RENAME_EXCHANGE ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 

int FUNC4(struct inode *old_dir, struct dentry *old_dentry,
			     struct inode *new_dir, struct dentry *new_dentry,
			     unsigned int flags)
{
	int err;

	err = FUNC3(old_dir);
	if (err)
		return err;

	err = FUNC3(new_dir);
	if (err)
		return err;

	/* ... in case we looked up ciphertext name(s) before key was added */
	if ((old_dentry->d_flags | new_dentry->d_flags) &
	    DCACHE_ENCRYPTED_NAME)
		return -ENOKEY;

	if (old_dir != new_dir) {
		if (FUNC0(new_dir) &&
		    !FUNC2(new_dir,
						   FUNC1(old_dentry)))
			return -EXDEV;

		if ((flags & RENAME_EXCHANGE) &&
		    FUNC0(old_dir) &&
		    !FUNC2(old_dir,
						   FUNC1(new_dentry)))
			return -EXDEV;
	}
	return 0;
}
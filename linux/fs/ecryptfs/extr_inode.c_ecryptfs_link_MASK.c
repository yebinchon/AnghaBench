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
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (struct dentry*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 int FUNC14 (struct dentry*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct dentry *old_dentry, struct inode *dir,
			 struct dentry *new_dentry)
{
	struct dentry *lower_old_dentry;
	struct dentry *lower_new_dentry;
	struct dentry *lower_dir_dentry;
	u64 file_size_save;
	int rc;

	file_size_save = FUNC9(FUNC0(old_dentry));
	lower_old_dentry = FUNC4(old_dentry);
	lower_new_dentry = FUNC4(new_dentry);
	FUNC2(lower_old_dentry);
	FUNC2(lower_new_dentry);
	lower_dir_dentry = FUNC11(lower_new_dentry);
	rc = FUNC14(lower_old_dentry, FUNC0(lower_dir_dentry),
		      lower_new_dentry, NULL);
	if (rc || FUNC1(lower_new_dentry))
		goto out_lock;
	rc = FUNC6(lower_new_dentry, new_dentry, dir->i_sb);
	if (rc)
		goto out_lock;
	FUNC7(dir, FUNC0(lower_dir_dentry));
	FUNC8(dir, FUNC0(lower_dir_dentry));
	FUNC12(FUNC0(old_dentry),
		  FUNC5(FUNC0(old_dentry))->i_nlink);
	FUNC10(FUNC0(new_dentry), file_size_save);
out_lock:
	FUNC13(lower_dir_dentry);
	FUNC3(lower_new_dentry);
	FUNC3(lower_old_dentry);
	return rc;
}
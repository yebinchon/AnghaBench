#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 TYPE_1__* FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,TYPE_1__*) ; 
 struct dentry* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 
 int FUNC10 (TYPE_1__*,struct dentry*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *dentry, umode_t mode)
{
	int rc;
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;

	lower_dentry = FUNC3(dentry);
	lower_dir_dentry = FUNC7(lower_dentry);
	rc = FUNC10(FUNC1(lower_dir_dentry), lower_dentry, mode);
	if (rc || FUNC2(lower_dentry))
		goto out;
	rc = FUNC4(lower_dentry, dentry, dir->i_sb);
	if (rc)
		goto out;
	FUNC5(dir, FUNC1(lower_dir_dentry));
	FUNC6(dir, FUNC1(lower_dir_dentry));
	FUNC8(dir, FUNC1(lower_dir_dentry)->i_nlink);
out:
	FUNC9(lower_dir_dentry);
	if (FUNC2(dentry))
		FUNC0(dentry);
	return rc;
}
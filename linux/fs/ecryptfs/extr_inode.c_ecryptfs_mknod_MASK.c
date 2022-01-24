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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int FUNC4 (struct dentry*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 struct dentry* FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t dev)
{
	int rc;
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;

	lower_dentry = FUNC3(dentry);
	lower_dir_dentry = FUNC7(lower_dentry);
	rc = FUNC9(FUNC1(lower_dir_dentry), lower_dentry, mode, dev);
	if (rc || FUNC2(lower_dentry))
		goto out;
	rc = FUNC4(lower_dentry, dentry, dir->i_sb);
	if (rc)
		goto out;
	FUNC5(dir, FUNC1(lower_dir_dentry));
	FUNC6(dir, FUNC1(lower_dir_dentry));
out:
	FUNC8(lower_dir_dentry);
	if (FUNC2(dentry))
		FUNC0(dentry);
	return rc;
}
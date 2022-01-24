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
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 TYPE_1__* FUNC2 (struct dentry*) ; 
 scalar_t__ FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,TYPE_1__*) ; 
 struct dentry* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 
 int FUNC11 (TYPE_1__*,struct dentry*) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry)
{
	struct dentry *lower_dentry;
	struct dentry *lower_dir_dentry;
	int rc;

	lower_dentry = FUNC6(dentry);
	FUNC4(dentry);
	lower_dir_dentry = FUNC8(lower_dentry);
	FUNC4(lower_dentry);
	rc = FUNC11(FUNC2(lower_dir_dentry), lower_dentry);
	FUNC5(lower_dentry);
	if (!rc && FUNC3(dentry))
		FUNC0(FUNC2(dentry));
	FUNC7(dir, FUNC2(lower_dir_dentry));
	FUNC9(dir, FUNC2(lower_dir_dentry)->i_nlink);
	FUNC10(lower_dir_dentry);
	if (!rc)
		FUNC1(dentry);
	FUNC5(dentry);
	return rc;
}
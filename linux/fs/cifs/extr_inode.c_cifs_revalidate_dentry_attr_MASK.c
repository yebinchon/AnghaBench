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
struct super_block {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  counter; } ;
struct inode {TYPE_1__ i_count; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_4__ {scalar_t__ unix_ext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct super_block*) ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 char* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,struct inode*,int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode**,char*,int /*<<< orphan*/ *,struct super_block*,unsigned int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode**,char*,struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 unsigned int FUNC10 () ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

int FUNC12(struct dentry *dentry)
{
	unsigned int xid;
	int rc = 0;
	struct inode *inode = FUNC8(dentry);
	struct super_block *sb = dentry->d_sb;
	char *full_path = NULL;

	if (inode == NULL)
		return -ENOENT;

	if (!FUNC6(inode))
		return rc;

	xid = FUNC10();

	/* can not safely grab the rename sem here if rename calls revalidate
	   since that would deadlock */
	full_path = FUNC1(dentry);
	if (full_path == NULL) {
		rc = -ENOMEM;
		goto out;
	}

	FUNC2(FYI, "Update attributes: %s inode 0x%p count %d dentry: 0x%p d_time %ld jiffies %ld\n",
		 full_path, inode, inode->i_count.counter,
		 dentry, FUNC5(dentry), jiffies);

	if (FUNC7(FUNC0(sb))->unix_ext)
		rc = FUNC4(&inode, full_path, sb, xid);
	else
		rc = FUNC3(&inode, full_path, NULL, sb,
					 xid, NULL);

out:
	FUNC11(full_path);
	FUNC9(xid);
	return rc;
}
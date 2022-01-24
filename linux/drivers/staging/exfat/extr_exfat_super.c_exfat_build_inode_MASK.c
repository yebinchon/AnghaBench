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
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct file_id_t {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 int /*<<< orphan*/  EXFAT_ROOT_INO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*,struct file_id_t*) ; 
 struct inode* FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (struct super_block*) ; 

__attribute__((used)) static struct inode *FUNC9(struct super_block *sb,
				       struct file_id_t *fid, loff_t i_pos)
{
	struct inode *inode;
	int err;

	inode = FUNC4(sb, i_pos);
	if (inode)
		goto out;
	inode = FUNC8(sb);
	if (!inode) {
		inode = FUNC0(-ENOMEM);
		goto out;
	}
	inode->i_ino = FUNC7(sb, EXFAT_ROOT_INO);
	FUNC1(inode, 1);
	err = FUNC3(inode, fid);
	if (err) {
		FUNC6(inode);
		inode = FUNC0(err);
		goto out;
	}
	FUNC2(inode, i_pos);
	FUNC5(inode);
out:
	return inode;
}
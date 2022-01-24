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
struct inode {int i_state; } ;
struct erofs_inode {int /*<<< orphan*/  nid; } ;
typedef  int /*<<< orphan*/  erofs_nid_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct erofs_inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int) ; 
 int I_NEW ; 
 int FUNC2 (struct inode*,int) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

struct inode *FUNC6(struct super_block *sb,
			 erofs_nid_t nid,
			 bool isdir)
{
	struct inode *inode = FUNC3(sb, nid);

	if (!inode)
		return FUNC1(-ENOMEM);

	if (inode->i_state & I_NEW) {
		int err;
		struct erofs_inode *vi = FUNC0(inode);

		vi->nid = nid;

		err = FUNC2(inode, isdir);
		if (!err)
			FUNC5(inode);
		else {
			FUNC4(inode);
			inode = FUNC1(err);
		}
	}
	return inode;
}
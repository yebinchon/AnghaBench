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
struct v9fs_inode {int /*<<< orphan*/ * writeback_fid; } ;
struct inode {int /*<<< orphan*/  i_data; } ;

/* Variables and functions */
 struct v9fs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 

void FUNC6(struct inode *inode)
{
	struct v9fs_inode *v9inode = FUNC0(inode);

	FUNC4(&inode->i_data);
	FUNC1(inode);
	FUNC2(&inode->i_data);

	FUNC5(inode);
	/* clunk the fid stashed in writeback_fid */
	if (v9inode->writeback_fid) {
		FUNC3(v9inode->writeback_fid);
		v9inode->writeback_fid = NULL;
	}
}
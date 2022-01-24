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
struct v9fs_inode {int /*<<< orphan*/ * fscache; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 struct v9fs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct inode*,int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *inode)
{
	struct v9fs_inode *v9inode = FUNC0(inode);

	if (!v9inode->fscache)
		return;
	FUNC2(P9_DEBUG_FSC, "inode %p flush cookie %p\n",
		 inode, v9inode->fscache);

	FUNC1(v9inode->fscache, NULL, true);
	v9inode->fscache = NULL;
}
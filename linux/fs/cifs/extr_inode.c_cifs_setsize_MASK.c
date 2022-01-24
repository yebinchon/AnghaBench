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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct cifsInodeInfo {scalar_t__ time; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct cifsInodeInfo* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct inode *inode, loff_t offset)
{
	struct cifsInodeInfo *cifs_i = FUNC0(inode);

	FUNC2(&inode->i_lock);
	FUNC1(inode, offset);
	FUNC3(&inode->i_lock);

	/* Cached inode must be refreshed on truncate */
	cifs_i->time = 0;
	FUNC4(inode, offset);
}
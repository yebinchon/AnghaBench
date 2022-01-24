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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_nlink; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

struct inode *FUNC4(struct super_block *sb, u64 ino)
{
	struct inode *inode = FUNC2(sb, ino);
	if (FUNC1(inode))
		return inode;
	if (inode->i_nlink == 0) {
		FUNC3(inode);
		return FUNC0(-ESTALE);
	}
	return inode;
}
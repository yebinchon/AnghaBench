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
typedef  int /*<<< orphan*/  u32 ;
struct super_block {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ESTALE ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb, u64 ino,
					u32 generation)
{
	struct inode *inode;

	if (!FUNC4(sb, ino))
		return FUNC1(-ESTALE);

	inode = FUNC3(sb, ino);
	if (FUNC2(inode))
		return FUNC0(inode);

	return inode;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct hlist_head {int dummy; } ;
struct exfat_sb_info {int /*<<< orphan*/  inode_hash_lock; struct hlist_head* inode_hashtable; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_hash_fat; int /*<<< orphan*/  i_pos; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct exfat_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hlist_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct inode *inode, loff_t i_pos)
{
	struct exfat_sb_info *sbi = FUNC1(inode->i_sb);
	struct hlist_head *head = sbi->inode_hashtable + FUNC2(i_pos);

	FUNC4(&sbi->inode_hash_lock);
	FUNC0(inode)->i_pos = i_pos;
	FUNC3(&FUNC0(inode)->i_hash_fat, head);
	FUNC5(&sbi->inode_hash_lock);
}
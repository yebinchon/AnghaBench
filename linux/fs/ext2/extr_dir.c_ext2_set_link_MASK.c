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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ino; } ;
struct ext2_dir_entry_2 {int /*<<< orphan*/  inode; int /*<<< orphan*/  rec_len; } ;
typedef  int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXT2_BTREE_FL ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct page*,int,unsigned int) ; 
 int FUNC5 (struct page*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ext2_dir_entry_2*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int FUNC12 (struct page*) ; 

void FUNC13(struct inode *dir, struct ext2_dir_entry_2 *de,
		   struct page *page, struct inode *inode, int update_times)
{
	loff_t pos = FUNC12(page) +
			(char *) de - (char *) FUNC11(page);
	unsigned len = FUNC7(de->rec_len);
	int err;

	FUNC9(page);
	err = FUNC5(page, pos, len);
	FUNC0(err);
	de->inode = FUNC2(inode->i_ino);
	FUNC8(de, inode);
	err = FUNC4(page, pos, len);
	FUNC6(page);
	if (update_times)
		dir->i_mtime = dir->i_ctime = FUNC3(dir);
	FUNC1(dir)->i_flags &= ~EXT2_BTREE_FL;
	FUNC10(dir);
}
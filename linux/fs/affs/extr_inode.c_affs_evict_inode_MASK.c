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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_nlink; scalar_t__ i_size; int /*<<< orphan*/  i_data; } ;
struct TYPE_2__ {int i_ext_last; int /*<<< orphan*/ * i_ext_bh; int /*<<< orphan*/ * i_ac; int /*<<< orphan*/ * i_lc; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void
FUNC10(struct inode *inode)
{
	unsigned long cache_page;
	FUNC8("evict_inode(ino=%lu, nlink=%u)\n",
		 inode->i_ino, inode->i_nlink);
	FUNC9(&inode->i_data);

	if (!inode->i_nlink) {
		inode->i_size = 0;
		FUNC4(inode);
	}

	FUNC7(inode);
	FUNC5(inode);
	FUNC3(inode);
	cache_page = (unsigned long)FUNC0(inode)->i_lc;
	if (cache_page) {
		FUNC8("freeing ext cache\n");
		FUNC0(inode)->i_lc = NULL;
		FUNC0(inode)->i_ac = NULL;
		FUNC6(cache_page);
	}
	FUNC1(FUNC0(inode)->i_ext_bh);
	FUNC0(inode)->i_ext_last = ~1;
	FUNC0(inode)->i_ext_bh = NULL;

	if (!inode->i_nlink)
		FUNC2(inode->i_sb, inode->i_ino);
}
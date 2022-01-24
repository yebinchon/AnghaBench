#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {TYPE_2__* s_bdev; } ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  erofs_blk_t ;
struct TYPE_4__ {TYPE_1__* bd_inode; } ;
struct TYPE_3__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  __GFP_FS ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space* const,int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct address_space* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct page *FUNC4(struct super_block *sb, erofs_blk_t blkaddr)
{
	struct address_space *const mapping = sb->s_bdev->bd_inode->i_mapping;
	struct page *page;

	page = FUNC3(mapping, blkaddr,
				   FUNC2(mapping, ~__GFP_FS));
	/* should already be PageUptodate */
	if (!FUNC0(page))
		FUNC1(page);
	return page;
}
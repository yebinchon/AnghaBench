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
struct v9fs_inode {int /*<<< orphan*/  writeback_fid; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct bio_vec {int bv_len; scalar_t__ bv_offset; struct page* bv_page; } ;
typedef  int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 struct v9fs_inode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*,int /*<<< orphan*/ ,struct bio_vec*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iov_iter*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct page *page)
{
	struct inode *inode = page->mapping->host;
	struct v9fs_inode *v9inode = FUNC1(inode);
	loff_t size = FUNC3(inode);
	struct iov_iter from;
	struct bio_vec bvec;
	int err, len;

	if (page->index == size >> PAGE_SHIFT)
		len = size & ~PAGE_MASK;
	else
		len = PAGE_SIZE;

	bvec.bv_page = page;
	bvec.bv_offset = 0;
	bvec.bv_len = len;
	FUNC4(&from, WRITE, &bvec, 1, len);

	/* We should have writeback_fid always set */
	FUNC0(!v9inode->writeback_fid);

	FUNC7(page);

	FUNC5(v9inode->writeback_fid, FUNC6(page), &from, &err);

	FUNC2(page);
	return err;
}
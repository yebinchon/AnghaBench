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
struct page {TYPE_1__* mapping; } ;
struct p9_fid {int dummy; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct bio_vec {scalar_t__ bv_len; struct page* bv_page; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct iov_iter*,int /*<<< orphan*/ ,struct bio_vec*,int,scalar_t__) ; 
 int FUNC5 (struct p9_fid*,int /*<<< orphan*/ ,struct iov_iter*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int FUNC9 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int,scalar_t__) ; 

__attribute__((used)) static int FUNC13(void *data, struct page *page)
{
	struct p9_fid *fid = data;
	struct inode *inode = page->mapping->host;
	struct bio_vec bvec = {.bv_page = page, .bv_len = PAGE_SIZE};
	struct iov_iter to;
	int retval, err;

	FUNC6(P9_DEBUG_VFS, "\n");

	FUNC0(!FUNC1(page));

	retval = FUNC9(inode, page);
	if (retval == 0)
		return retval;

	FUNC4(&to, READ, &bvec, 1, PAGE_SIZE);

	retval = FUNC5(fid, FUNC7(page), &to, &err);
	if (err) {
		FUNC11(inode, page);
		retval = err;
		goto done;
	}

	FUNC12(page, retval, PAGE_SIZE - retval);
	FUNC3(page);
	FUNC2(page);

	FUNC10(inode, page);
	retval = 0;

done:
	FUNC8(page);
	return retval;
}
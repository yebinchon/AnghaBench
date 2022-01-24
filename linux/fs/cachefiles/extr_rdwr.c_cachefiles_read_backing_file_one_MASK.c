#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int /*<<< orphan*/  flags; int /*<<< orphan*/  index; } ;
struct fscache_retrieval {int dummy; } ;
struct TYPE_6__ {struct page* private; } ;
struct cachefiles_one_read {int /*<<< orphan*/  op; TYPE_2__ monitor; struct page* back_page; struct page* netfs_page; } ;
struct cachefiles_object {int /*<<< orphan*/  backer; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_7__ {struct address_space* i_mapping; } ;
struct TYPE_5__ {int (* readpage ) (int /*<<< orphan*/ *,struct page*) ;} ;

/* Variables and functions */
 int EEXIST ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 struct page* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,TYPE_2__*) ; 
 int FUNC7 (struct page*,struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cachefiles_gfp ; 
 int /*<<< orphan*/  FUNC8 (struct cachefiles_object*,char*) ; 
 int /*<<< orphan*/  cachefiles_read_waiter ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct page*) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 
 struct page* FUNC11 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fscache_retrieval*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct fscache_retrieval*) ; 
 int /*<<< orphan*/  FUNC14 (struct fscache_retrieval*,struct page*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct fscache_retrieval*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct cachefiles_one_read*) ; 
 struct cachefiles_one_read* FUNC20 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int FUNC23 (int /*<<< orphan*/ *,struct page*) ; 
 scalar_t__ FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 

__attribute__((used)) static int FUNC26(struct cachefiles_object *object,
					    struct fscache_retrieval *op,
					    struct page *netpage)
{
	struct cachefiles_one_read *monitor;
	struct address_space *bmapping;
	struct page *newpage, *backpage;
	int ret;

	FUNC4("");

	FUNC3("read back %p{%lu,%d}",
	       netpage, netpage->index, FUNC21(netpage));

	monitor = FUNC20(sizeof(*monitor), cachefiles_gfp);
	if (!monitor)
		goto nomem;

	monitor->netfs_page = netpage;
	monitor->op = FUNC13(op);

	FUNC18(&monitor->monitor, cachefiles_read_waiter);

	/* attempt to get hold of the backing page */
	bmapping = FUNC10(object->backer)->i_mapping;
	newpage = NULL;

	for (;;) {
		backpage = FUNC11(bmapping, netpage->index);
		if (backpage)
			goto backing_page_already_present;

		if (!newpage) {
			newpage = FUNC2(cachefiles_gfp);
			if (!newpage)
				goto nomem_monitor;
		}

		ret = FUNC7(newpage, bmapping,
					    netpage->index, cachefiles_gfp);
		if (ret == 0)
			goto installed_new_backing_page;
		if (ret != -EEXIST)
			goto nomem_page;
	}

	/* we've installed a new backing page, so now we need to start
	 * it reading */
installed_new_backing_page:
	FUNC3("- new %p", newpage);

	backpage = newpage;
	newpage = NULL;

read_backing_page:
	ret = bmapping->a_ops->readpage(NULL, backpage);
	if (ret < 0)
		goto read_error;

	/* set the monitor to transfer the data across */
monitor_backing_page:
	FUNC3("- monitor add");

	/* install the monitor */
	FUNC17(monitor->netfs_page);
	FUNC17(backpage);
	monitor->back_page = backpage;
	monitor->monitor.private = backpage;
	FUNC6(backpage, &monitor->monitor);
	monitor = NULL;

	/* but the page may have been read before the monitor was installed, so
	 * the monitor may miss the event - so we have to ensure that we do get
	 * one in such a case */
	if (FUNC24(backpage)) {
		FUNC3("jumpstart %p {%lx}", backpage, backpage->flags);
		FUNC25(backpage);
	}
	goto success;

	/* if the backing page is already present, it can be in one of
	 * three states: read in progress, read failed or read okay */
backing_page_already_present:
	FUNC3("- present");

	if (newpage) {
		FUNC22(newpage);
		newpage = NULL;
	}

	if (FUNC0(backpage))
		goto io_error;

	if (FUNC1(backpage))
		goto backing_page_already_uptodate;

	if (!FUNC24(backpage))
		goto monitor_backing_page;
	FUNC3("read %p {%lx}", backpage, backpage->flags);
	goto read_backing_page;

	/* the backing page is already up to date, attach the netfs
	 * page to the pagecache and LRU and copy the data across */
backing_page_already_uptodate:
	FUNC3("- uptodate");

	FUNC14(op, netpage);

	FUNC9(netpage, backpage);
	FUNC12(op, netpage, 0);
	FUNC16(op, 1);

success:
	FUNC3("success");
	ret = 0;

out:
	if (backpage)
		FUNC22(backpage);
	if (monitor) {
		FUNC15(monitor->op);
		FUNC19(monitor);
	}
	FUNC5(" = %d", ret);
	return ret;

read_error:
	FUNC3("read error %d", ret);
	if (ret == -ENOMEM) {
		FUNC16(op, 1);
		goto out;
	}
io_error:
	FUNC8(object, "Page read error on backing file");
	FUNC16(op, 1);
	ret = -ENOBUFS;
	goto out;

nomem_page:
	FUNC22(newpage);
nomem_monitor:
	FUNC15(monitor->op);
	FUNC19(monitor);
nomem:
	FUNC16(op, 1);
	FUNC5(" = -ENOMEM");
	return -ENOMEM;
}
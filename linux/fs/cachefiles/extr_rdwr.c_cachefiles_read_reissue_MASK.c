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
struct page {int /*<<< orphan*/  flags; int /*<<< orphan*/  index; struct address_space* mapping; } ;
struct cachefiles_one_read {int /*<<< orphan*/  op_link; int /*<<< orphan*/  monitor; struct page* back_page; } ;
struct cachefiles_object {int /*<<< orphan*/  work_lock; int /*<<< orphan*/  backer; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_ino; struct address_space* i_mapping; } ;
struct TYPE_3__ {int (* readpage ) (int /*<<< orphan*/ *,struct page*) ;} ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EIO ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct page*) ; 
 scalar_t__ FUNC14 (struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*) ; 

__attribute__((used)) static int FUNC16(struct cachefiles_object *object,
				   struct cachefiles_one_read *monitor)
{
	struct address_space *bmapping = FUNC7(object->backer)->i_mapping;
	struct page *backpage = monitor->back_page, *backpage2;
	int ret;

	FUNC4("{ino=%lx},{%lx,%lx}",
	       FUNC7(object->backer)->i_ino,
	       backpage->index, backpage->flags);

	/* skip if the page was truncated away completely */
	if (backpage->mapping != bmapping) {
		FUNC5(" = -ENODATA [mapping]");
		return -ENODATA;
	}

	backpage2 = FUNC8(bmapping, backpage->index);
	if (!backpage2) {
		FUNC5(" = -ENODATA [gone]");
		return -ENODATA;
	}

	if (backpage != backpage2) {
		FUNC10(backpage2);
		FUNC5(" = -ENODATA [different]");
		return -ENODATA;
	}

	/* the page is still there and we already have a ref on it, so we don't
	 * need a second */
	FUNC10(backpage2);

	FUNC0(&monitor->op_link);
	FUNC6(backpage, &monitor->monitor);

	if (FUNC14(backpage)) {
		ret = -EIO;
		if (FUNC1(backpage))
			goto unlock_discard;
		ret = 0;
		if (FUNC2(backpage))
			goto unlock_discard;

		FUNC3("reissue read");
		ret = bmapping->a_ops->readpage(NULL, backpage);
		if (ret < 0)
			goto unlock_discard;
	}

	/* but the page may have been read before the monitor was installed, so
	 * the monitor may miss the event - so we have to ensure that we do get
	 * one in such a case */
	if (FUNC14(backpage)) {
		FUNC3("jumpstart %p {%lx}", backpage, backpage->flags);
		FUNC15(backpage);
	}

	/* it'll reappear on the todo list */
	FUNC5(" = -EINPROGRESS");
	return -EINPROGRESS;

unlock_discard:
	FUNC15(backpage);
	FUNC11(&object->work_lock);
	FUNC9(&monitor->op_link);
	FUNC12(&object->work_lock);
	FUNC5(" = %d", ret);
	return ret;
}
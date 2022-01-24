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
typedef  int /*<<< orphan*/  work_func_t ;
struct page {int dummy; } ;
struct cifs_writedata {int /*<<< orphan*/  work; int /*<<< orphan*/  done; int /*<<< orphan*/  list; int /*<<< orphan*/  refcount; struct page** pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cifs_writedata* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct cifs_writedata *
FUNC5(struct page **pages, work_func_t complete)
{
	struct cifs_writedata *wdata;

	wdata = FUNC4(sizeof(*wdata), GFP_NOFS);
	if (wdata != NULL) {
		wdata->pages = pages;
		FUNC3(&wdata->refcount);
		FUNC0(&wdata->list);
		FUNC2(&wdata->done);
		FUNC1(&wdata->work, complete);
	}
	return wdata;
}
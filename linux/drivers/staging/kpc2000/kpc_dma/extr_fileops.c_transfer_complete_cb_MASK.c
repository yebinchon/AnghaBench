#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  nents; int /*<<< orphan*/ * sgl; } ;
struct aio_cb_data {unsigned int page_count; scalar_t__ cpl; int /*<<< orphan*/  flags; struct aio_cb_data* user_pages; TYPE_3__ sgt; TYPE_2__* ldev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dir; TYPE_1__* pldev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aio_cb_data) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aio_cb_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct aio_cb_data) ; 
 int /*<<< orphan*/  FUNC6 (struct aio_cb_data) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

void  FUNC8(struct aio_cb_data *acd, size_t xfr_count, u32 flags)
{
	unsigned int i;

	FUNC0(acd == NULL);
	FUNC0(acd->user_pages == NULL);
	FUNC0(acd->sgt.sgl == NULL);
	FUNC0(acd->ldev == NULL);
	FUNC0(acd->ldev->pldev == NULL);

	for (i = 0 ; i < acd->page_count ; i++) {
		if (!FUNC1(acd->user_pages[i])) {
			FUNC6(acd->user_pages[i]);
		}
	}

	FUNC3(&acd->ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, acd->ldev->dir);

	for (i = 0 ; i < acd->page_count ; i++) {
		FUNC5(acd->user_pages[i]);
	}

	FUNC7(&acd->sgt);

	FUNC4(acd->user_pages);

	acd->flags = flags;

	if (acd->cpl) {
		FUNC2(acd->cpl);
	} else {
		/*
		 * There's no completion, so we're responsible for cleaning up
		 * the acd
		 */
		FUNC4(acd);
	}
}
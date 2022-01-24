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
struct scsi_device {struct rdac_dh_data* handler_data; } ;
struct rdac_dh_data {TYPE_1__* ctlr; int /*<<< orphan*/ * sdev; int /*<<< orphan*/  node; } ;
struct TYPE_2__ {int /*<<< orphan*/  kref; scalar_t__ ms_queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rdac_dh_data*) ; 
 int /*<<< orphan*/  kmpath_rdacd ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  release_controller ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( struct scsi_device *sdev )
{
	struct rdac_dh_data *h = sdev->handler_data;

	if (h->ctlr && h->ctlr->ms_queued)
		FUNC0(kmpath_rdacd);

	FUNC4(&list_lock);
	if (h->ctlr) {
		FUNC3(&h->node);
		h->sdev = NULL;
		FUNC2(&h->ctlr->kref, release_controller);
	}
	FUNC5(&list_lock);
	sdev->handler_data = NULL;
	FUNC1(h);
}
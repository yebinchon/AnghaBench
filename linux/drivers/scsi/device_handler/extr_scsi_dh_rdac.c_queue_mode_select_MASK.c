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
struct scsi_device {TYPE_1__* handler_data; } ;
struct rdac_queue_data {int /*<<< orphan*/  entry; TYPE_1__* h; void* callback_data; int /*<<< orphan*/  callback_fn; } ;
struct rdac_controller {int ms_queued; int /*<<< orphan*/  ms_lock; int /*<<< orphan*/  ms_work; struct scsi_device* ms_sdev; int /*<<< orphan*/  ms_head; } ;
typedef  int /*<<< orphan*/  activate_complete ;
struct TYPE_2__ {struct rdac_controller* ctlr; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SCSI_DH_OK ; 
 int SCSI_DH_RETRY ; 
 int /*<<< orphan*/  kmpath_rdacd ; 
 struct rdac_queue_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct scsi_device *sdev,
				activate_complete fn, void *data)
{
	struct rdac_queue_data *qdata;
	struct rdac_controller *ctlr;

	qdata = FUNC0(sizeof(*qdata), GFP_KERNEL);
	if (!qdata)
		return SCSI_DH_RETRY;

	qdata->h = sdev->handler_data;
	qdata->callback_fn = fn;
	qdata->callback_data = data;

	ctlr = qdata->h->ctlr;
	FUNC3(&ctlr->ms_lock);
	FUNC1(&qdata->entry, &ctlr->ms_head);
	if (!ctlr->ms_queued) {
		ctlr->ms_queued = 1;
		ctlr->ms_sdev = sdev;
		FUNC2(kmpath_rdacd, &ctlr->ms_work);
	}
	FUNC4(&ctlr->ms_lock);
	return SCSI_DH_OK;
}
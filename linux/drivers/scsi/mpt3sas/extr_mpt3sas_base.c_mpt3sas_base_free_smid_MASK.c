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
typedef  scalar_t__ u16 ;
struct scsiio_tracker {int dummy; } ;
struct MPT3SAS_ADAPTER {scalar_t__ hi_priority_smid; scalar_t__ internal_smid; scalar_t__ hba_queue_depth; int /*<<< orphan*/  scsi_lookup_lock; int /*<<< orphan*/  internal_free_list; TYPE_2__* internal_lookup; int /*<<< orphan*/  hpr_free_list; TYPE_1__* hpr_lookup; int /*<<< orphan*/  request_sz; } ;
struct TYPE_4__ {int cb_idx; int /*<<< orphan*/  tracker_list; } ;
struct TYPE_3__ {int cb_idx; int /*<<< orphan*/  tracker_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct MPT3SAS_ADAPTER*) ; 
 struct scsiio_tracker* FUNC1 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct MPT3SAS_ADAPTER*,struct scsiio_tracker*) ; 
 void* FUNC5 (struct MPT3SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC8(struct MPT3SAS_ADAPTER *ioc, u16 smid)
{
	unsigned long flags;
	int i;

	if (smid < ioc->hi_priority_smid) {
		struct scsiio_tracker *st;
		void *request;

		st = FUNC1(ioc, smid);
		if (!st) {
			FUNC0(ioc);
			return;
		}

		/* Clear MPI request frame */
		request = FUNC5(ioc, smid);
		FUNC3(request, 0, ioc->request_sz);

		FUNC4(ioc, st);
		FUNC0(ioc);
		return;
	}

	FUNC6(&ioc->scsi_lookup_lock, flags);
	if (smid < ioc->internal_smid) {
		/* hi-priority */
		i = smid - ioc->hi_priority_smid;
		ioc->hpr_lookup[i].cb_idx = 0xFF;
		FUNC2(&ioc->hpr_lookup[i].tracker_list, &ioc->hpr_free_list);
	} else if (smid <= ioc->hba_queue_depth) {
		/* internal queue */
		i = smid - ioc->internal_smid;
		ioc->internal_lookup[i].cb_idx = 0xFF;
		FUNC2(&ioc->internal_lookup[i].tracker_list,
		    &ioc->internal_free_list);
	}
	FUNC7(&ioc->scsi_lookup_lock, flags);
}
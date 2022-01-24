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
struct wahc {scalar_t__ active_buf_in_urbs; int /*<<< orphan*/ * buf_in_urbs; int /*<<< orphan*/  xfer_id_count; scalar_t__ dto_in_use; int /*<<< orphan*/  xfer_error_work; int /*<<< orphan*/  xfer_enqueue_work; int /*<<< orphan*/  xfer_list_lock; int /*<<< orphan*/  xfer_errored_list; int /*<<< orphan*/  xfer_delayed_list; int /*<<< orphan*/  xfer_list; int /*<<< orphan*/  dti_edc; int /*<<< orphan*/  dti_state; int /*<<< orphan*/  notifs_queued; int /*<<< orphan*/  nep_edc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WA_DTI_TRANSFER_RESULT_PENDING ; 
 int WA_MAX_BUF_IN_URBS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wa_process_errored_transfers_run ; 
 int /*<<< orphan*/  FUNC6 (struct wahc*) ; 
 int /*<<< orphan*/  wa_urb_enqueue_run ; 

__attribute__((used)) static inline void FUNC7(struct wahc *wa)
{
	int index;

	FUNC3(&wa->nep_edc);
	FUNC2(&wa->notifs_queued, 0);
	wa->dti_state = WA_DTI_TRANSFER_RESULT_PENDING;
	FUNC6(wa);
	FUNC3(&wa->dti_edc);
	FUNC0(&wa->xfer_list);
	FUNC0(&wa->xfer_delayed_list);
	FUNC0(&wa->xfer_errored_list);
	FUNC4(&wa->xfer_list_lock);
	FUNC1(&wa->xfer_enqueue_work, wa_urb_enqueue_run);
	FUNC1(&wa->xfer_error_work, wa_process_errored_transfers_run);
	wa->dto_in_use = 0;
	FUNC2(&wa->xfer_id_count, 1);
	/* init the buf in URBs */
	for (index = 0; index < WA_MAX_BUF_IN_URBS; ++index)
		FUNC5(&(wa->buf_in_urbs[index]));
	wa->active_buf_in_urbs = 0;
}
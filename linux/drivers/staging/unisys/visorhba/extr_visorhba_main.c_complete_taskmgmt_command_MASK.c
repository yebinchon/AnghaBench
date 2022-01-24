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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct TYPE_2__ {int /*<<< orphan*/  notifyresult_handle; int /*<<< orphan*/  notify_handle; } ;
struct uiscmdrsp {TYPE_1__ scsitaskmgmt; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct idr *idrtable,
				      struct uiscmdrsp *cmdrsp, int result)
{
	wait_queue_head_t *wq =
		FUNC0(idrtable, cmdrsp->scsitaskmgmt.notify_handle);
	int *scsi_result_ptr =
		FUNC0(idrtable, cmdrsp->scsitaskmgmt.notifyresult_handle);
	if (FUNC3(!(wq && scsi_result_ptr))) {
		FUNC2("visorhba: no completion context; cmd will time out\n");
		return;
	}

	/* copy the result of the taskmgmt and
	 * wake up the error handler that is waiting for this
	 */
	FUNC1("visorhba: notifying initiator with result=0x%x\n", result);
	*scsi_result_ptr = result;
	FUNC4(wq);
}
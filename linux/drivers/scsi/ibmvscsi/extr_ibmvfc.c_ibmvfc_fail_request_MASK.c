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
struct ibmvfc_event {int /*<<< orphan*/  (* done ) (struct ibmvfc_event*) ;int /*<<< orphan*/  timer; int /*<<< orphan*/  queue; TYPE_3__* xfer_iu; TYPE_1__* cmnd; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; } ;
struct TYPE_6__ {TYPE_2__ mad_common; } ;
struct TYPE_4__ {int result; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_MAD_DRIVER_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC3 (struct ibmvfc_event*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ibmvfc_event*) ; 

__attribute__((used)) static void FUNC6(struct ibmvfc_event *evt, int error_code)
{
	if (evt->cmnd) {
		evt->cmnd->result = (error_code << 16);
		evt->done = ibmvfc_scsi_eh_done;
	} else
		evt->xfer_iu->mad_common.status = FUNC0(IBMVFC_MAD_DRIVER_FAILED);

	FUNC4(&evt->queue);
	FUNC1(&evt->timer);
	FUNC3(evt);
	evt->done(evt);
}
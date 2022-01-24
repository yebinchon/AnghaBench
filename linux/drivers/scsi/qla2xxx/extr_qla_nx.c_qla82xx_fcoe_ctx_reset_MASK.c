#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ online; } ;
struct TYPE_8__ {TYPE_1__ flags; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 

int FUNC3(scsi_qla_host_t *vha)
{
	int rval = QLA_FUNCTION_FAILED;

	if (vha->flags.online) {
		/* Abort all outstanding commands, so as to be requeued later */
		FUNC0(vha);
	}

	/* Stop currently executing firmware.
	 * This will destroy existing FCoE context at the F/W end.
	 */
	FUNC1(vha);

	/* Restart. Creates a new FCoE context on INIT_FIRMWARE. */
	rval = FUNC2(vha);

	return rval;
}
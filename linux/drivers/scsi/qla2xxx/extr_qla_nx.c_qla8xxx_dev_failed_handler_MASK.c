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
struct qla_hw_data {int dummy; } ;
struct TYPE_7__ {scalar_t__ init_done; scalar_t__ online; } ;
struct TYPE_8__ {TYPE_1__ flags; int /*<<< orphan*/  device_flags; struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  DFLG_DEV_FAILED ; 
 int DID_NO_CONNECT ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct qla_hw_data*) ; 

void
FUNC9(scsi_qla_host_t *vha)
{
	struct qla_hw_data *ha = vha->hw;

	/* Disable the board */
	FUNC2(ql_log_fatal, vha, 0x00b8,
	    "Disabling the board.\n");

	if (FUNC1(ha)) {
		FUNC7(ha);
		FUNC8(ha);
	} else if (FUNC0(ha)) {
		FUNC5(ha);
		FUNC6(ha);
	}

	/* Set DEV_FAILED flag to disable timer */
	vha->device_flags |= DFLG_DEV_FAILED;
	FUNC3(vha, DID_NO_CONNECT << 16);
	FUNC4(vha, 0);
	vha->flags.online = 0;
	vha->flags.init_done = 0;
}
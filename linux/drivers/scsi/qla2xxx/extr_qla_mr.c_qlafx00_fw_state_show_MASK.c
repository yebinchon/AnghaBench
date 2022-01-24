#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  state ;
struct TYPE_10__ {TYPE_2__* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_8__ {int /*<<< orphan*/  eeh_busy; } ;
struct TYPE_9__ {TYPE_1__ flags; } ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 

uint32_t
FUNC6(struct device *dev, struct device_attribute *attr,
		      char *buf)
{
	scsi_qla_host_t *vha = FUNC5(FUNC0(dev));
	int rval = QLA_FUNCTION_FAILED;
	uint32_t state[1];

	if (FUNC3(vha))
		FUNC2(ql_log_warn, vha, 0x70ce,
		    "ISP reset active.\n");
	else if (!vha->hw->flags.eeh_busy) {
		rval = FUNC4(vha, state);
	}
	if (rval != QLA_SUCCESS)
		FUNC1(state, -1, sizeof(state));

	return state[0];
}
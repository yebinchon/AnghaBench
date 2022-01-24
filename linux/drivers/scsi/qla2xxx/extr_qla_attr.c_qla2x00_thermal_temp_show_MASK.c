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
typedef  int /*<<< orphan*/  uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_10__ {TYPE_2__* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_8__ {scalar_t__ eeh_busy; } ;
struct TYPE_9__ {int /*<<< orphan*/  optrom_mutex; TYPE_1__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	scsi_qla_host_t *vha = FUNC7(FUNC0(dev));
	uint16_t temp = 0;
	int rc;

	FUNC1(&vha->hw->optrom_mutex);
	if (FUNC4(vha)) {
		FUNC2(&vha->hw->optrom_mutex);
		FUNC3(ql_log_warn, vha, 0x70dc, "ISP reset active.\n");
		goto done;
	}

	if (vha->hw->flags.eeh_busy) {
		FUNC2(&vha->hw->optrom_mutex);
		FUNC3(ql_log_warn, vha, 0x70dd, "PCI EEH busy.\n");
		goto done;
	}

	rc = FUNC5(vha, &temp);
	FUNC2(&vha->hw->optrom_mutex);
	if (rc == QLA_SUCCESS)
		return FUNC6(buf, PAGE_SIZE, "%d\n", temp);

done:
	return FUNC6(buf, PAGE_SIZE, "\n");
}
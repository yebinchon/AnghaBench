#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct qla_hw_data {TYPE_1__* cs84xx; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_6__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_5__ {scalar_t__ op_fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	int rval = QLA_SUCCESS;
	uint16_t status[2] = { 0 };
	scsi_qla_host_t *vha = FUNC4(FUNC1(dev));
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(ha))
		return FUNC3(buf, PAGE_SIZE, "\n");

	if (!ha->cs84xx->op_fw_version) {
		rval = FUNC2(vha, status);

		if (!rval && !status[0])
			return FUNC3(buf, PAGE_SIZE, "%u\n",
			    (uint32_t)ha->cs84xx->op_fw_version);
	}

	return FUNC3(buf, PAGE_SIZE, "\n");
}
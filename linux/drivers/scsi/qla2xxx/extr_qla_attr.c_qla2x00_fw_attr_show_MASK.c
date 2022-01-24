#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct qla_hw_data {scalar_t__ fw_attributes; scalar_t__ fw_attributes_h; scalar_t__* fw_attributes_ext; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_3__ {struct qla_hw_data* hw; } ;
typedef  TYPE_1__ scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev,
    struct device_attribute *attr, char *buf)
{
	scsi_qla_host_t *vha = FUNC4(FUNC2(dev));
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(ha) && !FUNC1(ha))
		return FUNC3(buf, PAGE_SIZE, "\n");

	return FUNC3(buf, PAGE_SIZE, "%llx\n",
	    (uint64_t)ha->fw_attributes_ext[1] << 48 |
	    (uint64_t)ha->fw_attributes_ext[0] << 32 |
	    (uint64_t)ha->fw_attributes_h << 16 |
	    (uint64_t)ha->fw_attributes);
}
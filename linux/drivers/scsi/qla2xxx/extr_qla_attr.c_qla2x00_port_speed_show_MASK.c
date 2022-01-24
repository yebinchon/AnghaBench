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
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {scalar_t__ link_data_rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC2 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 struct scsi_qla_host* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *dev, struct device_attribute *attr,
    char *buf)
{
	struct scsi_qla_host *vha = FUNC4(FUNC0(dev));
	struct qla_hw_data *ha = vha->hw;
	ssize_t rval;
	char *spd[7] = {"0", "0", "0", "4", "8", "16", "32"};

	rval = FUNC2(vha);
	if (rval != QLA_SUCCESS) {
		FUNC1(ql_log_warn, vha, 0x70db,
		    "Unable to get port speed rval:%zd\n", rval);
		return -EINVAL;
	}

	FUNC1(ql_log_info, vha, 0x70d6,
	    "port speed:%d\n", ha->link_data_rate);

	return FUNC3(buf, PAGE_SIZE, "%s\n", spd[ha->link_data_rate]);
}
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
typedef  int ulong ;
struct scsi_qla_host {struct qla_hw_data* hw; } ;
struct qla_hw_data {int set_data_rate; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*) ; 
 int PORT_SPEED_16GB ; 
 int PORT_SPEED_32GB ; 
 int PORT_SPEED_4GB ; 
 int PORT_SPEED_8GB ; 
 void* PORT_SPEED_AUTO ; 
 int QLA_SET_DATA_RATE_LR ; 
 int QLA_SET_DATA_RATE_NOLR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (char const*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*) ; 
 int /*<<< orphan*/  ql_dbg_user ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,...) ; 
 int /*<<< orphan*/  ql_log_info ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC6 (struct scsi_qla_host*) ; 
 int FUNC7 (struct scsi_qla_host*,int) ; 
 struct scsi_qla_host* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC10(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
	struct scsi_qla_host *vha = FUNC8(FUNC2(dev));
	ulong type, speed;
	int oldspeed, rval;
	int mode = QLA_SET_DATA_RATE_LR;
	struct qla_hw_data *ha = vha->hw;

	if (!FUNC0(ha) && !FUNC1(ha)) {
		FUNC5(ql_log_warn, vha, 0x70d8,
		    "Speed setting not supported \n");
		return -EINVAL;
	}

	rval = FUNC3(buf, 10, &type);
	if (rval)
		return rval;
	speed = type;
	if (type == 40 || type == 80 || type == 160 ||
	    type == 320) {
		FUNC4(ql_dbg_user, vha, 0x70d9,
		    "Setting will be affected after a loss of sync\n");
		type = type/10;
		mode = QLA_SET_DATA_RATE_NOLR;
	}

	oldspeed = ha->set_data_rate;

	switch (type) {
	case 0:
		ha->set_data_rate = PORT_SPEED_AUTO;
		break;
	case 4:
		ha->set_data_rate = PORT_SPEED_4GB;
		break;
	case 8:
		ha->set_data_rate = PORT_SPEED_8GB;
		break;
	case 16:
		ha->set_data_rate = PORT_SPEED_16GB;
		break;
	case 32:
		ha->set_data_rate = PORT_SPEED_32GB;
		break;
	default:
		FUNC5(ql_log_warn, vha, 0x1199,
		    "Unrecognized speed setting:%lx. Setting Autoneg\n",
		    speed);
		ha->set_data_rate = PORT_SPEED_AUTO;
	}

	if (FUNC6(vha) || (oldspeed == ha->set_data_rate))
		return -EINVAL;

	FUNC5(ql_log_info, vha, 0x70da,
	    "Setting speed to %lx Gbps \n", type);

	rval = FUNC7(vha, mode);
	if (rval != QLA_SUCCESS)
		return -EIO;

	return FUNC9(buf);
}
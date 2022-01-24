#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct qla_hw_data {int /*<<< orphan*/  optrom_mutex; TYPE_1__* isp_ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_9__ {struct qla_hw_data* hw; } ;
typedef  TYPE_2__ scsi_qla_host_t ;
struct TYPE_8__ {int (* beacon_on ) (TYPE_2__*) ;int (* beacon_off ) (TYPE_2__*) ;} ;

/* Variables and functions */
 size_t EBUSY ; 
 size_t EINVAL ; 
 size_t EPERM ; 
 scalar_t__ FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ FUNC1 (struct qla_hw_data*) ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*,char*,int*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static ssize_t
FUNC11(struct device *dev, struct device_attribute *attr,
		     const char *buf, size_t count)
{
	scsi_qla_host_t *vha = FUNC7(FUNC2(dev));
	struct qla_hw_data *ha = vha->hw;
	int val = 0;
	int rval;

	if (FUNC0(ha) || FUNC1(ha))
		return -EPERM;

	if (FUNC8(buf, "%d", &val) != 1)
		return -EINVAL;

	FUNC3(&vha->hw->optrom_mutex);
	if (FUNC6(vha)) {
		FUNC4(&vha->hw->optrom_mutex);
		FUNC5(ql_log_warn, vha, 0x707a,
		    "Abort ISP active -- ignoring beacon request.\n");
		return -EBUSY;
	}

	if (val)
		rval = ha->isp_ops->beacon_on(vha);
	else
		rval = ha->isp_ops->beacon_off(vha);

	if (rval != QLA_SUCCESS)
		count = 0;

	FUNC4(&vha->hw->optrom_mutex);

	return count;
}
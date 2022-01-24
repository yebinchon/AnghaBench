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
struct qla_hw_data {int max_supported_speed; } ;
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

	return FUNC3(buf, PAGE_SIZE, "%s\n",
	    ha->max_supported_speed  == 2 ? "64Gps" :
	    ha->max_supported_speed  == 1 ? "32Gps" :
	    ha->max_supported_speed  == 0 ? "16Gps" : "unknown");
}
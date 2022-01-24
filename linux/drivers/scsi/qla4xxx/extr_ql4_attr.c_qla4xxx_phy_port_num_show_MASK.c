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
struct scsi_qla_host {int phy_port_num; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct scsi_qla_host* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev, struct device_attribute *attr,
		      char *buf)
{
	struct scsi_qla_host *ha = FUNC3(FUNC0(dev));

	if (FUNC1(ha))
		return -ENOSYS;

	return FUNC2(buf, PAGE_SIZE, "0x%04X\n", ha->phy_port_num);
}
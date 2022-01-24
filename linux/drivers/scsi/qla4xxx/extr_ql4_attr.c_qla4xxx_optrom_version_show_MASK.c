#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int bootload_major; int bootload_minor; int bootload_patch; int bootload_build; } ;
struct scsi_qla_host {TYPE_1__ fw_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 struct scsi_qla_host* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC3(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct scsi_qla_host *ha = FUNC2(FUNC0(dev));
	return FUNC1(buf, PAGE_SIZE, "%d.%02d.%02d.%02d\n",
			ha->fw_info.bootload_major, ha->fw_info.bootload_minor,
			ha->fw_info.bootload_patch, ha->fw_info.bootload_build);
}
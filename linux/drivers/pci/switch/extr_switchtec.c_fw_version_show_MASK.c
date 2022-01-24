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
typedef  int u32 ;
struct switchtec_dev {TYPE_1__* mmio_sys_info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  firmware_version; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct switchtec_dev* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct switchtec_dev *stdev = FUNC2(dev);
	u32 ver;

	ver = FUNC0(&stdev->mmio_sys_info->firmware_version);

	return FUNC1(buf, "%08x\n", ver);
}
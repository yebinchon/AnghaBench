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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT3SAS_ADAPTER {int fwfault_debug; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct MPT3SAS_ADAPTER*,char*,int) ; 
 struct MPT3SAS_ADAPTER* FUNC2 (struct Scsi_Host*) ; 
 int FUNC3 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *cdev, struct device_attribute *attr,
	const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC2(shost);
	int val = 0;

	if (FUNC3(buf, "%d", &val) != 1)
		return -EINVAL;

	ioc->fwfault_debug = val;
	FUNC1(ioc, "fwfault_debug=%d\n",
		 ioc->fwfault_debug);
	return FUNC4(buf);
}
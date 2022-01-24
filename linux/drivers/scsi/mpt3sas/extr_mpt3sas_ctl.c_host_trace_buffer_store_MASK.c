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
struct MPT3SAS_ADAPTER {int ring_buffer_offset; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 struct MPT3SAS_ADAPTER* FUNC1 (struct Scsi_Host*) ; 
 int FUNC2 (char const*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *cdev, struct device_attribute *attr,
	const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct MPT3SAS_ADAPTER *ioc = FUNC1(shost);
	int val = 0;

	if (FUNC2(buf, "%d", &val) != 1)
		return -EINVAL;

	ioc->ring_buffer_offset = val;
	return FUNC3(buf);
}
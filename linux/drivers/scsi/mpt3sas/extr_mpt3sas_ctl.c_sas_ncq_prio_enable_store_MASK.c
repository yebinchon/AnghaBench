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
struct scsi_device {struct MPT3SAS_DEVICE* hostdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct MPT3SAS_DEVICE {int ncq_prio_enable; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 struct scsi_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
				  struct device_attribute *attr,
				  const char *buf, size_t count)
{
	struct scsi_device *sdev = FUNC3(dev);
	struct MPT3SAS_DEVICE *sas_device_priv_data = sdev->hostdata;
	bool ncq_prio_enable = 0;

	if (FUNC0(buf, &ncq_prio_enable))
		return -EINVAL;

	if (!FUNC1(sdev))
		return -EINVAL;

	sas_device_priv_data->ncq_prio_enable = ncq_prio_enable;
	return FUNC2(buf);
}
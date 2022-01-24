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
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct scsi_device* FUNC1 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC2(struct device *dev,
				 struct device_attribute *attr, char *buf)
{
	struct scsi_device *sdev = FUNC1(dev);
	struct MPT3SAS_DEVICE *sas_device_priv_data = sdev->hostdata;

	return FUNC0(buf, PAGE_SIZE, "%d\n",
			sas_device_priv_data->ncq_prio_enable);
}
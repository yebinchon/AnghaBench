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
struct scsi_device {int dummy; } ;
struct kernfs_node {int dummy; } ;
struct device_attribute {int /*<<< orphan*/  attr; } ;
struct device {int /*<<< orphan*/  kobj; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct device_attribute*) ; 
 scalar_t__ FUNC2 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 struct kernfs_node* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 struct scsi_device* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *dev, struct device_attribute *attr,
		  const char *buf, size_t count)
{
	struct kernfs_node *kn;
	struct scsi_device *sdev = FUNC7(dev);

	/*
	 * We need to try to get module, avoiding the module been removed
	 * during delete.
	 */
	if (FUNC2(sdev))
		return -ENODEV;

	kn = FUNC5(&dev->kobj, &attr->attr);
	FUNC0(!kn);
	/*
	 * Concurrent writes into the "delete" sysfs attribute may trigger
	 * concurrent calls to device_remove_file() and scsi_remove_device().
	 * device_remove_file() handles concurrent removal calls by
	 * serializing these and by ignoring the second and later removal
	 * attempts.  Concurrent calls of scsi_remove_device() are
	 * serialized. The second and later calls of scsi_remove_device() are
	 * ignored because the first call of that function changes the device
	 * state into SDEV_DEL.
	 */
	FUNC1(dev, attr);
	FUNC4(sdev);
	if (kn)
		FUNC6(kn);
	FUNC3(sdev);
	return count;
}
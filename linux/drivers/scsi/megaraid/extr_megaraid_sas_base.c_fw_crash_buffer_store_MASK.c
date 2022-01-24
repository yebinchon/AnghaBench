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
struct megasas_instance {int fw_crash_buffer_offset; int /*<<< orphan*/  crashdump_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct device *cdev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct megasas_instance *instance =
		(struct megasas_instance *) shost->hostdata;
	int val = 0;
	unsigned long flags;

	if (FUNC1(buf, 0, &val) != 0)
		return -EINVAL;

	FUNC2(&instance->crashdump_lock, flags);
	instance->fw_crash_buffer_offset = val;
	FUNC3(&instance->crashdump_lock, flags);
	return FUNC4(buf);
}
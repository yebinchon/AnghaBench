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
struct megasas_instance {int fw_crash_state; TYPE_1__* pdev; int /*<<< orphan*/  crashdump_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AVAILABLE ; 
 int COPIED ; 
 int COPY_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 struct Scsi_Host* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct megasas_instance*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *cdev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct Scsi_Host *shost = FUNC0(cdev);
	struct megasas_instance *instance =
		(struct megasas_instance *) shost->hostdata;
	int val = 0;
	unsigned long flags;

	if (FUNC3(buf, 0, &val) != 0)
		return -EINVAL;

	if ((val <= AVAILABLE || val > COPY_ERROR)) {
		FUNC1(&instance->pdev->dev, "application updates invalid "
			"firmware crash state\n");
		return -EINVAL;
	}

	instance->fw_crash_state = val;

	if ((val == COPIED) || (val == COPY_ERROR)) {
		FUNC5(&instance->crashdump_lock, flags);
		FUNC4(instance);
		FUNC6(&instance->crashdump_lock, flags);
		if (val == COPY_ERROR)
			FUNC2(&instance->pdev->dev, "application failed to "
				"copy Firmware crash dump\n");
		else
			FUNC2(&instance->pdev->dev, "Firmware crash dump "
				"copied successfully\n");
	}
	return FUNC7(buf);
}
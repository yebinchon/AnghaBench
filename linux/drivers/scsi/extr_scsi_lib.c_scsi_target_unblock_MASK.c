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
struct device {int dummy; } ;
typedef  enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  device_unblock ; 
 scalar_t__ FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  target_unblock ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

void
FUNC4(struct device *dev, enum scsi_device_state new_state)
{
	if (FUNC1(dev))
		FUNC2(FUNC3(dev), &new_state,
					device_unblock);
	else
		FUNC0(dev, &new_state, target_unblock);
}
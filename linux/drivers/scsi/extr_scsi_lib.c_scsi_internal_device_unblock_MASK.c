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
struct scsi_device {int /*<<< orphan*/  state_mutex; } ;
typedef  enum scsi_device_state { ____Placeholder_scsi_device_state } scsi_device_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct scsi_device*,int) ; 

__attribute__((used)) static int FUNC3(struct scsi_device *sdev,
					enum scsi_device_state new_state)
{
	int ret;

	FUNC0(&sdev->state_mutex);
	ret = FUNC2(sdev, new_state);
	FUNC1(&sdev->state_mutex);

	return ret;
}
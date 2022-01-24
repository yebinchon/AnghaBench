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
struct pqi_scsi_dev {int keep_device; int /*<<< orphan*/  scsi_device_list_entry; } ;
struct pqi_ctrl_info {int /*<<< orphan*/  scsi_device_list_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct pqi_ctrl_info *ctrl_info,
	struct pqi_scsi_dev *device)
{
	unsigned long flags;

	FUNC1(&ctrl_info->scsi_device_list_lock, flags);
	FUNC0(&device->scsi_device_list_entry);
	FUNC2(&ctrl_info->scsi_device_list_lock, flags);

	/* Allow the device structure to be freed later. */
	device->keep_device = false;
}
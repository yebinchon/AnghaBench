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
struct scsi_disk {int /*<<< orphan*/  dev; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_device*) ; 
 int /*<<< orphan*/  sd_ref_mutex ; 

__attribute__((used)) static void FUNC4(struct scsi_disk *sdkp)
{
	struct scsi_device *sdev = sdkp->device;

	FUNC0(&sd_ref_mutex);
	FUNC2(&sdkp->dev);
	FUNC3(sdev);
	FUNC1(&sd_ref_mutex);
}
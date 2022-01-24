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
struct scsi_disk {int /*<<< orphan*/  dev; int /*<<< orphan*/  device; } ;
struct gendisk {scalar_t__ private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct scsi_disk* FUNC4 (struct gendisk*) ; 
 int /*<<< orphan*/  sd_ref_mutex ; 

__attribute__((used)) static struct scsi_disk *FUNC5(struct gendisk *disk)
{
	struct scsi_disk *sdkp = NULL;

	FUNC1(&sd_ref_mutex);

	if (disk->private_data) {
		sdkp = FUNC4(disk);
		if (FUNC3(sdkp->device) == 0)
			FUNC0(&sdkp->dev);
		else
			sdkp = NULL;
	}
	FUNC2(&sd_ref_mutex);
	return sdkp;
}
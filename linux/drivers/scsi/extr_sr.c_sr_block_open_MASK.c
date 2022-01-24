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
struct scsi_cd {int /*<<< orphan*/  cdi; struct scsi_device* device; } ;
struct block_device {int /*<<< orphan*/  bd_disk; } ;
typedef  int /*<<< orphan*/  fmode_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ *,struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct scsi_device*) ; 
 struct scsi_cd* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct scsi_cd*) ; 
 int /*<<< orphan*/  sr_mutex ; 

__attribute__((used)) static int FUNC8(struct block_device *bdev, fmode_t mode)
{
	struct scsi_cd *cd;
	struct scsi_device *sdev;
	int ret = -ENXIO;

	cd = FUNC6(bdev->bd_disk);
	if (!cd)
		goto out;

	sdev = cd->device;
	FUNC4(sdev);
	FUNC1(bdev);

	FUNC2(&sr_mutex);
	ret = FUNC0(&cd->cdi, bdev, mode);
	FUNC3(&sr_mutex);

	FUNC5(sdev);
	if (ret)
		FUNC7(cd);

out:
	return ret;
}
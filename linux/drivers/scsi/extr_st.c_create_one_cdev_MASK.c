#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct st_modedef {struct device** devs; struct cdev** cdevs; } ;
struct scsi_tape {int index; struct st_modedef* modes; TYPE_2__* device; TYPE_1__* disk; } ;
struct device {int dummy; } ;
struct cdev {int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  sdev_gendev; } ;
struct TYPE_3__ {char* disk_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  SCSI_TAPE_MAJOR ; 
 int ST_NBR_MODE_BITS ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC4 (struct cdev*,int /*<<< orphan*/ ,int) ; 
 struct cdev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct cdev*) ; 
 struct device* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct st_modedef*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_fops ; 
 int /*<<< orphan*/ * st_formats ; 
 int /*<<< orphan*/  st_sysfs_class ; 

__attribute__((used)) static int FUNC10(struct scsi_tape *tape, int mode, int rew)
{
	int i, error;
	dev_t cdev_devno;
	struct cdev *cdev;
	struct device *dev;
	struct st_modedef *STm = &(tape->modes[mode]);
	char name[10];
	int dev_num = tape->index;

	cdev_devno = FUNC1(SCSI_TAPE_MAJOR, FUNC3(dev_num, mode, rew));

	cdev = FUNC5();
	if (!cdev) {
		FUNC8("st%d: out of memory. Device not attached.\n", dev_num);
		error = -ENOMEM;
		goto out;
	}
	cdev->owner = THIS_MODULE;
	cdev->ops = &st_fops;
	STm->cdevs[rew] = cdev;

	error = FUNC4(cdev, cdev_devno, 1);
	if (error) {
		FUNC8("st%d: Can't add %s-rewind mode %d\n", dev_num,
		       rew ? "non" : "auto", mode);
		FUNC8("st%d: Device not attached.\n", dev_num);
		goto out_free;
	}

	i = mode << (4 - ST_NBR_MODE_BITS);
	FUNC9(name, 10, "%s%s%s", rew ? "n" : "",
		 tape->disk->disk_name, st_formats[i]);

	dev = FUNC7(&st_sysfs_class, &tape->device->sdev_gendev,
			    cdev_devno, &tape->modes[mode], "%s", name);
	if (FUNC0(dev)) {
		FUNC8("st%d: device_create failed\n", dev_num);
		error = FUNC2(dev);
		goto out_free;
	}

	STm->devs[rew] = dev;

	return 0;
out_free:
	FUNC6(STm->cdevs[rew]);
out:
	STm->cdevs[rew] = NULL;
	STm->devs[rew] = NULL;
	return error;
}
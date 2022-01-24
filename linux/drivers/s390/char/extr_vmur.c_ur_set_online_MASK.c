#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int devno; } ;
struct urdev {scalar_t__ class; TYPE_5__* char_device; int /*<<< orphan*/  device; TYPE_3__* cdev; TYPE_1__ dev_id; } ;
struct ccw_device {int /*<<< orphan*/  dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  owner; TYPE_4__* ops; } ;
struct TYPE_11__ {int /*<<< orphan*/  owner; } ;
struct TYPE_9__ {scalar_t__ cu_type; } ;
struct TYPE_10__ {TYPE_2__ id; } ;

/* Variables and functions */
 scalar_t__ DEV_CLASS_UR_I ; 
 scalar_t__ DEV_CLASS_UR_O ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 scalar_t__ PRINTER_DEVTYPE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ READER_PUNCH_DEVTYPE ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 TYPE_5__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*) ; 
 int /*<<< orphan*/  ur_first_dev_maj_min ; 
 TYPE_4__ ur_fops ; 
 struct urdev* FUNC13 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct urdev*) ; 
 int /*<<< orphan*/  vmur_class ; 
 int /*<<< orphan*/  vmur_mutex ; 

__attribute__((used)) static int FUNC15(struct ccw_device *cdev)
{
	struct urdev *urd;
	int minor, major, rc;
	char node_id[16];

	FUNC4("ur_set_online: cdev=%p\n", cdev);

	FUNC10(&vmur_mutex);
	urd = FUNC13(cdev);
	if (!urd) {
		/* ur_remove already deleted our urd */
		rc = -ENODEV;
		goto fail_unlock;
	}

	if (urd->char_device) {
		/* Another ur_set_online was faster */
		rc = -EBUSY;
		goto fail_urdev_put;
	}

	minor = urd->dev_id.devno;
	major = FUNC1(ur_first_dev_maj_min);

	urd->char_device = FUNC6();
	if (!urd->char_device) {
		rc = -ENOMEM;
		goto fail_urdev_put;
	}

	urd->char_device->ops = &ur_fops;
	urd->char_device->owner = ur_fops.owner;

	rc = FUNC5(urd->char_device, FUNC2(major, minor), 1);
	if (rc)
		goto fail_free_cdev;
	if (urd->cdev->id.cu_type == READER_PUNCH_DEVTYPE) {
		if (urd->class == DEV_CLASS_UR_I)
			FUNC12(node_id, "vmrdr-%s", FUNC8(&cdev->dev));
		if (urd->class == DEV_CLASS_UR_O)
			FUNC12(node_id, "vmpun-%s", FUNC8(&cdev->dev));
	} else if (urd->cdev->id.cu_type == PRINTER_DEVTYPE) {
		FUNC12(node_id, "vmprt-%s", FUNC8(&cdev->dev));
	} else {
		rc = -EOPNOTSUPP;
		goto fail_free_cdev;
	}

	urd->device = FUNC9(vmur_class, &cdev->dev,
				    urd->char_device->dev, NULL, "%s", node_id);
	if (FUNC0(urd->device)) {
		rc = FUNC3(urd->device);
		FUNC4("ur_set_online: device_create rc=%d\n", rc);
		goto fail_free_cdev;
	}
	FUNC14(urd);
	FUNC11(&vmur_mutex);
	return 0;

fail_free_cdev:
	FUNC7(urd->char_device);
	urd->char_device = NULL;
fail_urdev_put:
	FUNC14(urd);
fail_unlock:
	FUNC11(&vmur_mutex);
	return rc;
}
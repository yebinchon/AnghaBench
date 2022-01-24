#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tape_class_device {char* device_name; char* mode_name; TYPE_2__* char_device; TYPE_1__* class_device; } ;
struct file_operations {int /*<<< orphan*/  owner; } ;
struct device {int /*<<< orphan*/  kobj; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; struct file_operations const* ops; int /*<<< orphan*/  owner; } ;
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct tape_class_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  TAPECLASS_NAME_LEN ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tape_class_device*) ; 
 struct tape_class_device* FUNC8 (int,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  tape_class ; 

struct tape_class_device *FUNC12(
	struct device *		device,
	dev_t			dev,
	const struct file_operations *fops,
	char *			device_name,
	char *			mode_name)
{
	struct tape_class_device *	tcd;
	int		rc;
	char *		s;

	tcd = FUNC8(sizeof(struct tape_class_device), GFP_KERNEL);
	if (!tcd)
		return FUNC0(-ENOMEM);

	FUNC10(tcd->device_name, device_name, TAPECLASS_NAME_LEN);
	for (s = FUNC9(tcd->device_name, '/'); s; s = FUNC9(s, '/'))
		*s = '!';
	FUNC10(tcd->mode_name, mode_name, TAPECLASS_NAME_LEN);
	for (s = FUNC9(tcd->mode_name, '/'); s; s = FUNC9(s, '/'))
		*s = '!';

	tcd->char_device = FUNC3();
	if (!tcd->char_device) {
		rc = -ENOMEM;
		goto fail_with_tcd;
	}

	tcd->char_device->owner = fops->owner;
	tcd->char_device->ops   = fops;

	rc = FUNC2(tcd->char_device, dev, 1);
	if (rc)
		goto fail_with_cdev;

	tcd->class_device = FUNC5(tape_class, device,
					  tcd->char_device->dev, NULL,
					  "%s", tcd->device_name);
	rc = FUNC1(tcd->class_device);
	if (rc)
		goto fail_with_cdev;
	rc = FUNC11(
		&device->kobj,
		&tcd->class_device->kobj,
		tcd->mode_name
	);
	if (rc)
		goto fail_with_class_device;

	return tcd;

fail_with_class_device:
	FUNC6(tape_class, tcd->char_device->dev);

fail_with_cdev:
	FUNC4(tcd->char_device);

fail_with_tcd:
	FUNC7(tcd);

	return FUNC0(rc);
}
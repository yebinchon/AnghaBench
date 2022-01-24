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
struct fieldbus_dev {int id; int /*<<< orphan*/  cdev; int /*<<< orphan*/  dev; int /*<<< orphan*/  parent; int /*<<< orphan*/  dc_wq; int /*<<< orphan*/  fieldbus_id_get; int /*<<< orphan*/  write_area; int /*<<< orphan*/  read_area; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_FIELDBUSES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fieldbus_dev*,char*,int) ; 
 int /*<<< orphan*/  fieldbus_class ; 
 int /*<<< orphan*/  fieldbus_devt ; 
 int /*<<< orphan*/  fieldbus_fops ; 
 int /*<<< orphan*/  fieldbus_ida ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC12(struct fieldbus_dev *fb)
{
	dev_t devno;
	int err;

	if (!fb)
		return -EINVAL;
	if (!fb->read_area || !fb->write_area || !fb->fieldbus_id_get)
		return -EINVAL;
	fb->id = FUNC8(&fieldbus_ida, 0, MAX_FIELDBUSES, GFP_KERNEL);
	if (fb->id < 0)
		return fb->id;
	devno = FUNC2(FUNC1(fieldbus_devt), fb->id);
	FUNC10(&fb->dc_wq);
	FUNC6(&fb->cdev, &fieldbus_fops);
	err = FUNC4(&fb->cdev, devno, 1);
	if (err) {
		FUNC11("fieldbus_dev%d unable to add device %d:%d\n",
		       fb->id, FUNC1(fieldbus_devt), fb->id);
		goto err_cdev;
	}
	fb->dev = FUNC7(&fieldbus_class, fb->parent, devno, fb,
				"fieldbus_dev%d", fb->id);
	if (FUNC0(fb->dev)) {
		err = FUNC3(fb->dev);
		goto err_dev_create;
	}
	return 0;

err_dev_create:
	FUNC5(&fb->cdev);
err_cdev:
	FUNC9(&fieldbus_ida, fb->id);
	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * class; int /*<<< orphan*/  devt; } ;
struct telem_device_data {TYPE_1__ dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  available; int /*<<< orphan*/  ec; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TELEM_DEV_NAME_FMT ; 
 scalar_t__ TELEM_MAX_DEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 struct telem_device_data* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct telem_device_data*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  telem_class ; 
 int /*<<< orphan*/  telem_device_free ; 
 int /*<<< orphan*/  telem_fops ; 
 int /*<<< orphan*/  telem_ida ; 
 int /*<<< orphan*/  telem_major ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct telem_device_data *dev_data;
	int error, minor;

	/* Get the next available device number */
	minor = FUNC8(&telem_ida, TELEM_MAX_DEV-1, GFP_KERNEL);
	if (minor < 0) {
		error = minor;
		FUNC4(&pdev->dev, "Failed to find minor number: %d", error);
		return error;
	}

	dev_data = FUNC10(sizeof(*dev_data), GFP_KERNEL);
	if (!dev_data) {
		FUNC9(&telem_ida, minor);
		return -ENOMEM;
	}

	/* Initialize the device data */
	dev_data->ec = FUNC5(&pdev->dev);
	FUNC1(&dev_data->available, 1);
	FUNC11(pdev, dev_data);

	/* Initialize the device */
	dev_data->dev.devt = FUNC0(telem_major, minor);
	dev_data->dev.class = &telem_class;
	dev_data->dev.release = telem_device_free;
	FUNC6(&dev_data->dev, TELEM_DEV_NAME_FMT, minor);
	FUNC7(&dev_data->dev);

	/* Initialize the character device and add it to userspace */;
	FUNC3(&dev_data->cdev, &telem_fops);
	error = FUNC2(&dev_data->cdev, &dev_data->dev);
	if (error) {
		FUNC12(&dev_data->dev);
		FUNC9(&telem_ida, minor);
		return error;
	}

	return 0;
}
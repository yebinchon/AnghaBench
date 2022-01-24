#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * class; int /*<<< orphan*/  devt; } ;
struct event_device_data {int exist; TYPE_1__ dev; int /*<<< orphan*/  cdev; int /*<<< orphan*/  available; int /*<<< orphan*/  wq; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  events; } ;
struct acpi_device {struct event_device_data* driver_data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  EVENT_DEV_NAME_FMT ; 
 scalar_t__ EVENT_MAX_DEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  event_class ; 
 int /*<<< orphan*/  event_fops ; 
 int /*<<< orphan*/  event_ida ; 
 int /*<<< orphan*/  event_major ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_device_data ; 
 int /*<<< orphan*/  FUNC8 (struct event_device_data*) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct event_device_data*) ; 
 struct event_device_data* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queue_size ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct acpi_device *adev)
{
	struct event_device_data *dev_data;
	int error, minor;

	minor = FUNC9(&event_ida, EVENT_MAX_DEV-1, GFP_KERNEL);
	if (minor < 0) {
		error = minor;
		FUNC4(&adev->dev, "Failed to find minor number: %d\n", error);
		return error;
	}

	dev_data = FUNC13(sizeof(*dev_data), GFP_KERNEL);
	if (!dev_data) {
		error = -ENOMEM;
		goto free_minor;
	}

	/* Initialize the device data. */
	adev->driver_data = dev_data;
	dev_data->events = FUNC7(queue_size);
	if (!dev_data->events) {
		FUNC12(dev_data);
		error = -ENOMEM;
		goto free_minor;
	}
	FUNC14(&dev_data->queue_lock);
	FUNC11(&dev_data->wq);
	dev_data->exist = true;
	FUNC1(&dev_data->available, 1);

	/* Initialize the device. */
	dev_data->dev.devt = FUNC0(event_major, minor);
	dev_data->dev.class = &event_class;
	dev_data->dev.release = free_device_data;
	FUNC5(&dev_data->dev, EVENT_DEV_NAME_FMT, minor);
	FUNC6(&dev_data->dev);

	/* Initialize the character device, and add it to userspace. */
	FUNC3(&dev_data->cdev, &event_fops);
	error = FUNC2(&dev_data->cdev, &dev_data->dev);
	if (error)
		goto free_dev_data;

	return 0;

free_dev_data:
	FUNC8(dev_data);
free_minor:
	FUNC10(&event_ida, minor);
	return error;
}
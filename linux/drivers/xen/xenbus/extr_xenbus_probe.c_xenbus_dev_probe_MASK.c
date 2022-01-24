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
struct xenbus_driver {int (* probe ) (struct xenbus_device*,struct xenbus_device_id const*) ;int /*<<< orphan*/  ids; } ;
struct xenbus_device_id {int dummy; } ;
struct xenbus_device {int /*<<< orphan*/  nodename; int /*<<< orphan*/  dev; } ;
struct device {int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  XenbusStateClosed ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct xenbus_device_id* FUNC2 (int /*<<< orphan*/ ,struct xenbus_device*) ; 
 int FUNC3 (struct xenbus_device*,struct xenbus_device_id const*) ; 
 int FUNC4 (struct xenbus_device*) ; 
 struct xenbus_device* FUNC5 (struct device*) ; 
 struct xenbus_driver* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xenbus_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct xenbus_device*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xenbus_device*,int /*<<< orphan*/ ) ; 

int FUNC10(struct device *_dev)
{
	struct xenbus_device *dev = FUNC5(_dev);
	struct xenbus_driver *drv = FUNC6(_dev->driver);
	const struct xenbus_device_id *id;
	int err;

	FUNC0("%s", dev->nodename);

	if (!drv->probe) {
		err = -ENODEV;
		goto fail;
	}

	id = FUNC2(drv->ids, dev);
	if (!id) {
		err = -ENODEV;
		goto fail;
	}

	err = FUNC4(dev);
	if (err) {
		FUNC1(&dev->dev, "talk_to_otherend on %s failed.\n",
			 dev->nodename);
		return err;
	}

	err = drv->probe(dev, id);
	if (err)
		goto fail;

	err = FUNC7(dev);
	if (err) {
		FUNC1(&dev->dev, "watch_otherend on %s failed.\n",
		       dev->nodename);
		return err;
	}

	return 0;
fail:
	FUNC8(dev, err, "xenbus_dev_probe on %s", dev->nodename);
	FUNC9(dev, XenbusStateClosed);
	return err;
}
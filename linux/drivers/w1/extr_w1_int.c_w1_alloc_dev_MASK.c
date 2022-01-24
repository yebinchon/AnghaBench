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
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  init_name; } ;
struct w1_master {int max_slave_count; int id; int slave_ttl; int seq; TYPE_1__ dev; struct device_driver* driver; int /*<<< orphan*/  name; int /*<<< orphan*/  list_mutex; int /*<<< orphan*/  bus_mutex; int /*<<< orphan*/  mutex; int /*<<< orphan*/  async_list; int /*<<< orphan*/  slist; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  enable_pullup; int /*<<< orphan*/  search_count; scalar_t__ initialized; scalar_t__ attempts; scalar_t__ slave_count; int /*<<< orphan*/  owner; struct w1_bus_master* bus_master; } ;
struct w1_bus_master {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 struct w1_master* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  w1_enable_pullup ; 
 int /*<<< orphan*/  w1_search_count ; 

__attribute__((used)) static struct w1_master *FUNC10(u32 id, int slave_count, int slave_ttl,
				       struct device_driver *driver,
				       struct device *device)
{
	struct w1_master *dev;
	int err;

	/*
	 * We are in process context(kernel thread), so can sleep.
	 */
	dev = FUNC4(sizeof(struct w1_master) + sizeof(struct w1_bus_master), GFP_KERNEL);
	if (!dev) {
		FUNC7("Failed to allocate %zd bytes for new w1 device.\n",
			sizeof(struct w1_master));
		return NULL;
	}


	dev->bus_master = (struct w1_bus_master *)(dev + 1);

	dev->owner		= THIS_MODULE;
	dev->max_slave_count	= slave_count;
	dev->slave_count	= 0;
	dev->attempts		= 0;
	dev->initialized	= 0;
	dev->id			= id;
	dev->slave_ttl		= slave_ttl;
	dev->search_count	= w1_search_count;
	dev->enable_pullup	= w1_enable_pullup;

	/* 1 for w1_process to decrement
	 * 1 for __w1_remove_master_device to decrement
	 */
	FUNC1(&dev->refcnt, 2);

	FUNC0(&dev->slist);
	FUNC0(&dev->async_list);
	FUNC6(&dev->mutex);
	FUNC6(&dev->bus_mutex);
	FUNC6(&dev->list_mutex);

	FUNC5(&dev->dev, device, sizeof(struct device));
	FUNC2(&dev->dev, "w1_bus_master%u", dev->id);
	FUNC9(dev->name, sizeof(dev->name), "w1_bus_master%u", dev->id);
	dev->dev.init_name = dev->name;

	dev->driver = driver;

	dev->seq = 1;

	err = FUNC3(&dev->dev);
	if (err) {
		FUNC7("Failed to register master device. err=%d\n", err);
		FUNC8(&dev->dev);
		dev = NULL;
	}

	return dev;
}
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
struct ssb_driver {struct ssb_device_id* id_table; } ;
struct ssb_device_id {scalar_t__ revision; scalar_t__ coreid; scalar_t__ vendor; } ;
struct ssb_device {int /*<<< orphan*/  id; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct ssb_device* FUNC0 (struct device*) ; 
 struct ssb_driver* FUNC1 (struct device_driver*) ; 
 scalar_t__ FUNC2 (struct ssb_device_id const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev, struct device_driver *drv)
{
	struct ssb_device *ssb_dev = FUNC0(dev);
	struct ssb_driver *ssb_drv = FUNC1(drv);
	const struct ssb_device_id *id;

	for (id = ssb_drv->id_table;
	     id->vendor || id->coreid || id->revision;
	     id++) {
		if (FUNC2(id, &ssb_dev->id))
			return 1; /* found */
	}

	return 0;
}
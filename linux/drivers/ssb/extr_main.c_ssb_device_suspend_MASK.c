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
struct ssb_driver {int (* suspend ) (struct ssb_device*,int /*<<< orphan*/ ) ;} ;
struct ssb_device {int dummy; } ;
struct device {scalar_t__ driver; } ;
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 struct ssb_device* FUNC0 (struct device*) ; 
 struct ssb_driver* FUNC1 (scalar_t__) ; 
 int FUNC2 (struct ssb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct device *dev, pm_message_t state)
{
	struct ssb_device *ssb_dev = FUNC0(dev);
	struct ssb_driver *ssb_drv;
	int err = 0;

	if (dev->driver) {
		ssb_drv = FUNC1(dev->driver);
		if (ssb_drv && ssb_drv->suspend)
			err = ssb_drv->suspend(ssb_dev, state);
		if (err)
			goto out;
	}
out:
	return err;
}
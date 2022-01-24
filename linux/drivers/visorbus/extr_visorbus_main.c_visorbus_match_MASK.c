#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct visorchannel {int dummy; } ;
struct visor_driver {TYPE_1__* channel_types; } ;
struct visor_device {struct visorchannel* visorchannel; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  guid_t ;
struct TYPE_2__ {int /*<<< orphan*/  version; int /*<<< orphan*/  min_bytes; scalar_t__ name; int /*<<< orphan*/  guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  VISOR_CHANNEL_SIGNATURE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct visor_device* FUNC2 (struct device*) ; 
 struct visor_driver* FUNC3 (struct device_driver*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct visorchannel*) ; 
 int /*<<< orphan*/  FUNC6 (struct visorchannel*) ; 

__attribute__((used)) static int FUNC7(struct device *xdev, struct device_driver *xdrv)
{
	const guid_t *channel_type;
	int i;
	struct visor_device *dev;
	struct visor_driver *drv;
	struct visorchannel *chan;

	dev = FUNC2(xdev);
	channel_type = FUNC5(dev->visorchannel);
	drv = FUNC3(xdrv);
	chan = dev->visorchannel;
	if (!drv->channel_types)
		return 0;
	for (i = 0; !FUNC1(&drv->channel_types[i].guid); i++)
		if (FUNC0(&drv->channel_types[i].guid, channel_type) &&
		    FUNC4(FUNC6(chan),
					xdev,
					&drv->channel_types[i].guid,
					(char *)drv->channel_types[i].name,
					drv->channel_types[i].min_bytes,
					drv->channel_types[i].version,
					VISOR_CHANNEL_SIGNATURE))
			return i + 1;
	return 0;
}
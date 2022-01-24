#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct greybus_descriptor_cport {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; TYPE_1__* parent; } ;
struct gbphy_device {int id; TYPE_2__ dev; struct greybus_descriptor_cport* cport_desc; struct gb_bundle* bundle; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_mask; } ;
struct gb_bundle {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct gbphy_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  gbphy_bus_type ; 
 int /*<<< orphan*/  gbphy_dev_groups ; 
 int /*<<< orphan*/  gbphy_id ; 
 int /*<<< orphan*/  greybus_gbphy_dev_type ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct gbphy_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static struct gbphy_device *FUNC7(struct gb_bundle *bundle,
				struct greybus_descriptor_cport *cport_desc)
{
	struct gbphy_device *gbphy_dev;
	int retval;
	int id;

	id = FUNC3(&gbphy_id, 1, 0, GFP_KERNEL);
	if (id < 0)
		return FUNC0(id);

	gbphy_dev = FUNC5(sizeof(*gbphy_dev), GFP_KERNEL);
	if (!gbphy_dev) {
		FUNC4(&gbphy_id, id);
		return FUNC0(-ENOMEM);
	}

	gbphy_dev->id = id;
	gbphy_dev->bundle = bundle;
	gbphy_dev->cport_desc = cport_desc;
	gbphy_dev->dev.parent = &bundle->dev;
	gbphy_dev->dev.bus = &gbphy_bus_type;
	gbphy_dev->dev.type = &greybus_gbphy_dev_type;
	gbphy_dev->dev.groups = gbphy_dev_groups;
	gbphy_dev->dev.dma_mask = bundle->dev.dma_mask;
	FUNC1(&gbphy_dev->dev, "gbphy%d", id);

	retval = FUNC2(&gbphy_dev->dev);
	if (retval) {
		FUNC6(&gbphy_dev->dev);
		return FUNC0(retval);
	}

	return gbphy_dev;
}
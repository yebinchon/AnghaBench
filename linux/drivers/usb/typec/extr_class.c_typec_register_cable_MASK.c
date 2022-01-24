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
struct typec_port {int /*<<< orphan*/  dev; } ;
struct typec_cable_desc {scalar_t__ identity; int /*<<< orphan*/  active; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/ * type; int /*<<< orphan*/ * parent; int /*<<< orphan*/  class; int /*<<< orphan*/  groups; } ;
struct typec_cable {TYPE_1__ dev; scalar_t__ identity; int /*<<< orphan*/  active; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct typec_cable* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 struct typec_cable* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  typec_cable_dev_type ; 
 int /*<<< orphan*/  typec_class ; 
 int /*<<< orphan*/  usb_pd_id_groups ; 

struct typec_cable *FUNC7(struct typec_port *port,
					 struct typec_cable_desc *desc)
{
	struct typec_cable *cable;
	int ret;

	cable = FUNC5(sizeof(*cable), GFP_KERNEL);
	if (!cable)
		return FUNC0(-ENOMEM);

	cable->type = desc->type;
	cable->active = desc->active;

	if (desc->identity) {
		/*
		 * Creating directory for the identity only if the driver is
		 * able to provide data to it.
		 */
		cable->dev.groups = usb_pd_id_groups;
		cable->identity = desc->identity;
	}

	cable->dev.class = typec_class;
	cable->dev.parent = &port->dev;
	cable->dev.type = &typec_cable_dev_type;
	FUNC3(&cable->dev, "%s-cable", FUNC2(&port->dev));

	ret = FUNC4(&cable->dev);
	if (ret) {
		FUNC1(&port->dev, "failed to register cable (%d)\n", ret);
		FUNC6(&cable->dev);
		return FUNC0(ret);
	}

	return cable;
}
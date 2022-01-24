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
struct typec_partner_desc {scalar_t__ identity; int /*<<< orphan*/  accessory; int /*<<< orphan*/  usb_pd; } ;
struct TYPE_4__ {int /*<<< orphan*/ * type; int /*<<< orphan*/ * parent; int /*<<< orphan*/  class; int /*<<< orphan*/  groups; } ;
struct typec_partner {TYPE_1__ dev; scalar_t__ identity; int /*<<< orphan*/  accessory; int /*<<< orphan*/  usb_pd; int /*<<< orphan*/  mode_ids; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct typec_partner* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct typec_partner* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  typec_class ; 
 int /*<<< orphan*/  typec_partner_dev_type ; 
 int /*<<< orphan*/  usb_pd_id_groups ; 

struct typec_partner *FUNC8(struct typec_port *port,
					     struct typec_partner_desc *desc)
{
	struct typec_partner *partner;
	int ret;

	partner = FUNC6(sizeof(*partner), GFP_KERNEL);
	if (!partner)
		return FUNC0(-ENOMEM);

	FUNC5(&partner->mode_ids);
	partner->usb_pd = desc->usb_pd;
	partner->accessory = desc->accessory;

	if (desc->identity) {
		/*
		 * Creating directory for the identity only if the driver is
		 * able to provide data to it.
		 */
		partner->dev.groups = usb_pd_id_groups;
		partner->identity = desc->identity;
	}

	partner->dev.class = typec_class;
	partner->dev.parent = &port->dev;
	partner->dev.type = &typec_partner_dev_type;
	FUNC3(&partner->dev, "%s-partner", FUNC2(&port->dev));

	ret = FUNC4(&partner->dev);
	if (ret) {
		FUNC1(&port->dev, "failed to register partner (%d)\n", ret);
		FUNC7(&partner->dev);
		return FUNC0(ret);
	}

	return partner;
}
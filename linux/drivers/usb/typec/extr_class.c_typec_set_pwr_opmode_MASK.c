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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct typec_port {int pwr_opmode; TYPE_1__ dev; } ;
struct typec_partner {int usb_pd; } ;
struct device {int /*<<< orphan*/  kobj; } ;
typedef  enum typec_pwr_opmode { ____Placeholder_typec_pwr_opmode } typec_pwr_opmode ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int TYPEC_PWR_MODE_PD ; 
 struct device* FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  partner_match ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 struct typec_partner* FUNC4 (struct device*) ; 

void FUNC5(struct typec_port *port,
			  enum typec_pwr_opmode opmode)
{
	struct device *partner_dev;

	if (port->pwr_opmode == opmode)
		return;

	port->pwr_opmode = opmode;
	FUNC3(&port->dev.kobj, NULL, "power_operation_mode");
	FUNC1(&port->dev.kobj, KOBJ_CHANGE);

	partner_dev = FUNC0(&port->dev, NULL, partner_match);
	if (partner_dev) {
		struct typec_partner *partner = FUNC4(partner_dev);

		if (opmode == TYPEC_PWR_MODE_PD && !partner->usb_pd) {
			partner->usb_pd = 1;
			FUNC3(&partner_dev->kobj, NULL,
				     "supports_usb_power_delivery");
		}
		FUNC2(partner_dev);
	}
}
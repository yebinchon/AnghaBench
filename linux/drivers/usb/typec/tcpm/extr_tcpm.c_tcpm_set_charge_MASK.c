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
struct tcpm_port {int vbus_charge; scalar_t__ vbus_source; TYPE_1__* tcpc; } ;
struct TYPE_2__ {int (* set_vbus ) (TYPE_1__*,scalar_t__,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tcpm_port*,char*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct tcpm_port *port, bool charge)
{
	int ret;

	if (charge && port->vbus_source)
		return -EINVAL;

	if (charge != port->vbus_charge) {
		FUNC1(port, "vbus=%d charge:=%d", port->vbus_source, charge);
		ret = port->tcpc->set_vbus(port->tcpc, port->vbus_source,
					   charge);
		if (ret < 0)
			return ret;
	}
	port->vbus_charge = charge;
	return 0;
}
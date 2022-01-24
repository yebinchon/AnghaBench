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
struct TYPE_2__ {size_t trtype; } ;
struct nvmet_port {scalar_t__ inline_data_size; int enabled; struct nvmet_fabrics_ops const* tr_ops; TYPE_1__ disc_addr; } ;
struct nvmet_fabrics_ops {int (* add_port ) (struct nvmet_port*) ;int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvmet_config_sem ; 
 struct nvmet_fabrics_ops** nvmet_transports ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int FUNC5 (struct nvmet_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct nvmet_port *port)
{
	const struct nvmet_fabrics_ops *ops;
	int ret;

	FUNC1(&nvmet_config_sem);

	ops = nvmet_transports[port->disc_addr.trtype];
	if (!ops) {
		FUNC7(&nvmet_config_sem);
		FUNC4("nvmet-transport-%d", port->disc_addr.trtype);
		FUNC0(&nvmet_config_sem);
		ops = nvmet_transports[port->disc_addr.trtype];
		if (!ops) {
			FUNC3("transport type %d not supported\n",
				port->disc_addr.trtype);
			return -EINVAL;
		}
	}

	if (!FUNC6(ops->owner))
		return -EINVAL;

	ret = ops->add_port(port);
	if (ret) {
		FUNC2(ops->owner);
		return ret;
	}

	/* If the transport didn't set inline_data_size, then disable it. */
	if (port->inline_data_size < 0)
		port->inline_data_size = 0;

	port->enabled = true;
	port->tr_ops = ops;
	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int /*<<< orphan*/  mutex; scalar_t__ console; } ;
struct uart_state {int /*<<< orphan*/  pm_state; struct uart_port* uart_port; int /*<<< orphan*/  remove_wait; int /*<<< orphan*/  refcount; struct tty_port port; } ;
struct uart_port {int /*<<< orphan*/  flags; scalar_t__ line; TYPE_3__* dev; int /*<<< orphan*/ ** tty_groups; int /*<<< orphan*/ * attr_group; TYPE_1__* cons; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; scalar_t__ minor; struct uart_state* state; } ;
struct uart_driver {TYPE_2__* tty_driver; int /*<<< orphan*/  dev_name; TYPE_1__* cons; struct uart_state* state; scalar_t__ nr; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_6__ {scalar_t__ name_base; scalar_t__ minor_start; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int CON_ENABLED ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  UART_PM_STATE_UNDEFINED ; 
 int /*<<< orphan*/  UPF_DEAD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ ** FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  port_lock_key ; 
 int /*<<< orphan*/  port_mutex ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tty_dev_attr_group ; 
 struct device* FUNC14 (struct tty_port*,TYPE_2__*,scalar_t__,TYPE_3__*,struct tty_port*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (struct uart_driver*,struct uart_state*,struct uart_port*) ; 
 scalar_t__ FUNC16 (struct uart_port*) ; 

int FUNC17(struct uart_driver *drv, struct uart_port *uport)
{
	struct uart_state *state;
	struct tty_port *port;
	int ret = 0;
	struct device *tty_dev;
	int num_groups;

	FUNC0(FUNC5());

	if (uport->line >= drv->nr)
		return -EINVAL;

	state = drv->state + uport->line;
	port = &state->port;

	FUNC10(&port_mutex);
	FUNC10(&port->mutex);
	if (state->uart_port) {
		ret = -EINVAL;
		goto out;
	}

	/* Link the port to the driver state table and vice versa */
	FUNC2(&state->refcount, 1);
	FUNC6(&state->remove_wait);
	state->uart_port = uport;
	uport->state = state;

	state->pm_state = UART_PM_STATE_UNDEFINED;
	uport->cons = drv->cons;
	uport->minor = drv->tty_driver->minor_start + uport->line;
	uport->name = FUNC7(GFP_KERNEL, "%s%d", drv->dev_name,
				drv->tty_driver->name_base + uport->line);
	if (!uport->name) {
		ret = -ENOMEM;
		goto out;
	}

	/*
	 * If this port is a console, then the spinlock is already
	 * initialised.
	 */
	if (!(FUNC16(uport) && (uport->cons->flags & CON_ENABLED))) {
		FUNC13(&uport->lock);
		FUNC9(&uport->lock, &port_lock_key);
	}
	if (uport->cons && uport->dev)
		FUNC12(uport->dev->of_node, uport->cons->name, uport->line);

	FUNC15(drv, state, uport);

	port->console = FUNC16(uport);

	num_groups = 2;
	if (uport->attr_group)
		num_groups++;

	uport->tty_groups = FUNC8(num_groups, sizeof(*uport->tty_groups),
				    GFP_KERNEL);
	if (!uport->tty_groups) {
		ret = -ENOMEM;
		goto out;
	}
	uport->tty_groups[0] = &tty_dev_attr_group;
	if (uport->attr_group)
		uport->tty_groups[1] = uport->attr_group;

	/*
	 * Register the port whether it's detected or not.  This allows
	 * setserial to be used to alter this port's parameters.
	 */
	tty_dev = FUNC14(port, drv->tty_driver,
			uport->line, uport->dev, port, uport->tty_groups);
	if (!FUNC1(tty_dev)) {
		FUNC4(tty_dev, 1);
	} else {
		FUNC3(uport->dev, "Cannot register tty device on line %d\n",
		       uport->line);
	}

	/*
	 * Ensure UPF_DEAD is not set.
	 */
	uport->flags &= ~UPF_DEAD;

 out:
	FUNC11(&port->mutex);
	FUNC11(&port_mutex);

	return ret;
}
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
struct resource {scalar_t__ start; int /*<<< orphan*/  flags; scalar_t__ end; } ;
struct pcmcia_socket {int state; int /*<<< orphan*/  ops_mutex; } ;
struct pcmcia_device {int _io; int /*<<< orphan*/  dev; int /*<<< orphan*/  io_lines; TYPE_1__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_2__ {int state; struct resource* io; } ;
typedef  TYPE_1__ config_t ;

/* Variables and functions */
 int CONFIG_IO_REQ ; 
 int CONFIG_LOCKED ; 
 int EINVAL ; 
 int SOCKET_PRESENT ; 
 int FUNC0 (struct pcmcia_socket*,struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*,struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 

int FUNC6(struct pcmcia_device *p_dev)
{
	struct pcmcia_socket *s = p_dev->socket;
	config_t *c = p_dev->function_config;
	int ret = -EINVAL;

	FUNC2(&s->ops_mutex);
	FUNC1(&p_dev->dev, "pcmcia_request_io: %pR , %pR",
		&c->io[0], &c->io[1]);

	if (!(s->state & SOCKET_PRESENT)) {
		FUNC1(&p_dev->dev, "pcmcia_request_io: No card present\n");
		goto out;
	}

	if (c->state & CONFIG_LOCKED) {
		FUNC1(&p_dev->dev, "Configuration is locked\n");
		goto out;
	}
	if (c->state & CONFIG_IO_REQ) {
		FUNC1(&p_dev->dev, "IO already configured\n");
		goto out;
	}

	ret = FUNC0(s, &c->io[0], p_dev->io_lines);
	if (ret)
		goto out;

	if (c->io[1].end) {
		ret = FUNC0(s, &c->io[1], p_dev->io_lines);
		if (ret) {
			struct resource tmp = c->io[0];
			/* release the previously allocated resource */
			FUNC4(s, &c->io[0]);
			/* but preserve the settings, for they worked... */
			c->io[0].end = FUNC5(&tmp);
			c->io[0].start = tmp.start;
			c->io[0].flags = tmp.flags;
			goto out;
		}
	} else
		c->io[1].start = 0;

	c->state |= CONFIG_IO_REQ;
	p_dev->_io = 1;

	FUNC1(&p_dev->dev, "pcmcia_request_io succeeded: %pR , %pR",
		&c->io[0], &c->io[1]);
out:
	FUNC3(&s->ops_mutex);

	return ret;
}
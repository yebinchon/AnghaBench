#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_socket {int /*<<< orphan*/  ops_mutex; } ;
struct pcmcia_device {scalar_t__ _io; TYPE_1__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; TYPE_2__* io; } ;
typedef  TYPE_1__ config_t ;
struct TYPE_4__ {scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_IO_REQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_device *p_dev)
{
	struct pcmcia_socket *s = p_dev->socket;
	int ret = -EINVAL;
	config_t *c;

	FUNC0(&s->ops_mutex);
	if (!p_dev->_io)
		goto out;

	c = p_dev->function_config;

	FUNC2(s, &c->io[0]);

	if (c->io[1].end)
		FUNC2(s, &c->io[1]);

	p_dev->_io = 0;
	c->state &= ~CONFIG_IO_REQ;

out:
	FUNC1(&s->ops_mutex);

	return ret;
}
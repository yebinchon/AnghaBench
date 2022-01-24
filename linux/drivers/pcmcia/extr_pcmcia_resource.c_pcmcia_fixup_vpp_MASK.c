#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {unsigned char Vpp; } ;
struct pcmcia_socket {int state; int /*<<< orphan*/  ops_mutex; TYPE_3__ socket; TYPE_2__* ops; } ;
struct pcmcia_device {unsigned char vpp; int /*<<< orphan*/  dev; TYPE_1__* function_config; struct pcmcia_socket* socket; } ;
struct TYPE_5__ {scalar_t__ (* set_socket ) (struct pcmcia_socket*,TYPE_3__*) ;} ;
struct TYPE_4__ {int state; } ;

/* Variables and functions */
 int CONFIG_LOCKED ; 
 int EACCES ; 
 int EIO ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct pcmcia_socket*,TYPE_3__*) ; 

int FUNC5(struct pcmcia_device *p_dev, unsigned char new_vpp)
{
	struct pcmcia_socket *s = p_dev->socket;
	int ret = 0;

	FUNC2(&s->ops_mutex);

	FUNC0(&p_dev->dev, "fixup Vpp to %d\n", new_vpp);

	if (!(s->state & SOCKET_PRESENT) ||
		!(p_dev->function_config->state & CONFIG_LOCKED)) {
		FUNC0(&p_dev->dev, "No card? Config not locked?\n");
		ret = -EACCES;
		goto unlock;
	}

	s->socket.Vpp = new_vpp;
	if (s->ops->set_socket(s, &s->socket)) {
		FUNC1(&p_dev->dev, "Unable to set VPP\n");
		ret = -EIO;
		goto unlock;
	}
	p_dev->vpp = new_vpp;

unlock:
	FUNC3(&s->ops_mutex);

	return ret;
}
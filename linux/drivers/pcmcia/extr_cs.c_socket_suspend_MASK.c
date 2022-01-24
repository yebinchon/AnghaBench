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
struct pcmcia_socket {int state; int suspended_state; int /*<<< orphan*/  ops_mutex; TYPE_1__* ops; int /*<<< orphan*/  socket; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* suspend ) (struct pcmcia_socket*) ;int /*<<< orphan*/  (* set_socket ) (struct pcmcia_socket*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int SOCKET_IN_RESUME ; 
 int SOCKET_SUSPEND ; 
 int /*<<< orphan*/  dead_socket ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC4(struct pcmcia_socket *skt)
{
	if ((skt->state & SOCKET_SUSPEND) && !(skt->state & SOCKET_IN_RESUME))
		return -EBUSY;

	FUNC0(&skt->ops_mutex);
	/* store state on first suspend, but not after spurious wakeups */
	if (!(skt->state & SOCKET_IN_RESUME))
		skt->suspended_state = skt->state;

	skt->socket = dead_socket;
	skt->ops->set_socket(skt, &skt->socket);
	if (skt->ops->suspend)
		skt->ops->suspend(skt);
	skt->state |= SOCKET_SUSPEND;
	skt->state &= ~SOCKET_IN_RESUME;
	FUNC1(&skt->ops_mutex);
	return 0;
}
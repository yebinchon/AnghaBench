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
struct pcmcia_socket {int /*<<< orphan*/  socket_released; int /*<<< orphan*/  ops_mutex; TYPE_1__* resource_ops; int /*<<< orphan*/  socket_list; scalar_t__ thread; int /*<<< orphan*/  ops; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* exit ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcmcia_socket_list_rwsem ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct pcmcia_socket *socket)
{
	if (!socket)
		return;

	FUNC0(&socket->dev, "pcmcia_unregister_socket(0x%p)\n", socket->ops);

	if (socket->thread)
		FUNC2(socket->thread);

	/* remove from our own list */
	FUNC1(&pcmcia_socket_list_rwsem);
	FUNC3(&socket->socket_list);
	FUNC7(&pcmcia_socket_list_rwsem);

	/* wait for sysfs to drop all references */
	if (socket->resource_ops->exit) {
		FUNC4(&socket->ops_mutex);
		socket->resource_ops->exit(socket);
		FUNC5(&socket->ops_mutex);
	}
	FUNC8(&socket->socket_released);
}
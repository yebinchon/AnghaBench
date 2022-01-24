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
struct pcmcia_socket {int state; int /*<<< orphan*/  skt_mutex; TYPE_1__* callback; int /*<<< orphan*/  ops_mutex; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* resume ) (struct pcmcia_socket*) ;int /*<<< orphan*/  (* suspend ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int EPERM ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_PRESENT ; 
 int SOCKET_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_socket*) ; 

int FUNC6(struct pcmcia_socket *skt)
{
	int ret;

	FUNC0(&skt->dev, "resetting socket\n");

	FUNC1(&skt->skt_mutex);
	do {
		if (!(skt->state & SOCKET_PRESENT)) {
			FUNC0(&skt->dev, "can't reset, not present\n");
			ret = -ENODEV;
			break;
		}
		if (skt->state & SOCKET_SUSPEND) {
			FUNC0(&skt->dev, "can't reset, suspended\n");
			ret = -EBUSY;
			break;
		}
		if (skt->state & SOCKET_CARDBUS) {
			FUNC0(&skt->dev, "can't reset, is cardbus\n");
			ret = -EPERM;
			break;
		}

		if (skt->callback)
			skt->callback->suspend(skt);
		FUNC1(&skt->ops_mutex);
		ret = FUNC3(skt);
		FUNC2(&skt->ops_mutex);
		if ((ret == 0) && (skt->callback))
			skt->callback->resume(skt);

		ret = 0;
	} while (0);
	FUNC2(&skt->skt_mutex);

	return ret;
}
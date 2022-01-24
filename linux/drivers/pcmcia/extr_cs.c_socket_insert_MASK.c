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
struct pcmcia_socket {int state; int /*<<< orphan*/  ops_mutex; TYPE_1__* callback; int /*<<< orphan*/  dev; int /*<<< orphan*/  sock; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* add ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_CARDBUS_CONFIG ; 
 int SOCKET_INUSE ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  setup_delay ; 
 int FUNC5 (struct pcmcia_socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC7 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC8(struct pcmcia_socket *skt)
{
	int ret;

	FUNC1(&skt->dev, "insert\n");

	FUNC3(&skt->ops_mutex);
	if (skt->state & SOCKET_INUSE) {
		FUNC4(&skt->ops_mutex);
		return -EINVAL;
	}
	skt->state |= SOCKET_INUSE;

	ret = FUNC5(skt, setup_delay);
	if (ret == 0) {
		skt->state |= SOCKET_PRESENT;

		FUNC2(&skt->dev, "pccard: %s card inserted into slot %d\n",
			   (skt->state & SOCKET_CARDBUS) ? "CardBus" : "PCMCIA",
			   skt->sock);

#ifdef CONFIG_CARDBUS
		if (skt->state & SOCKET_CARDBUS) {
			cb_alloc(skt);
			skt->state |= SOCKET_CARDBUS_CONFIG;
		}
#endif
		FUNC1(&skt->dev, "insert done\n");
		FUNC4(&skt->ops_mutex);

		if (!(skt->state & SOCKET_CARDBUS) && (skt->callback))
			skt->callback->add(skt);
	} else {
		FUNC4(&skt->ops_mutex);
		FUNC6(skt);
	}

	return ret;
}
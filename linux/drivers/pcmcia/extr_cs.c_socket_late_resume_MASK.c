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
struct pcmcia_socket {int state; int suspended_state; TYPE_1__* callback; int /*<<< orphan*/  dev; scalar_t__ resume_status; int /*<<< orphan*/  ops_mutex; } ;
struct TYPE_2__ {int (* early_resume ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_IN_RESUME ; 
 int SOCKET_PRESENT ; 
 int SOCKET_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcmcia_socket*) ; 
 int FUNC5 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC6(struct pcmcia_socket *skt)
{
	int ret = 0;

	FUNC1(&skt->ops_mutex);
	skt->state &= ~(SOCKET_SUSPEND | SOCKET_IN_RESUME);
	FUNC2(&skt->ops_mutex);

	if (!(skt->state & SOCKET_PRESENT)) {
		ret = FUNC3(skt);
		if (ret == -ENODEV)
			ret = 0;
		return ret;
	}

	if (skt->resume_status) {
		FUNC4(skt);
		return 0;
	}

	if (skt->suspended_state != skt->state) {
		FUNC0(&skt->dev,
			"suspend state 0x%x != resume state 0x%x\n",
			skt->suspended_state, skt->state);

		FUNC4(skt);
		return FUNC3(skt);
	}

	if (!(skt->state & SOCKET_CARDBUS) && (skt->callback))
		ret = skt->callback->early_resume(skt);
	return ret;
}
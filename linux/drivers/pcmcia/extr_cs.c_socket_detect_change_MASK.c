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
struct pcmcia_socket {int state; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* get_status ) (struct pcmcia_socket*,int*) ;} ;

/* Variables and functions */
 int SOCKET_PRESENT ; 
 int SOCKET_SUSPEND ; 
 int SS_DETECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcmcia_socket*,int*) ; 

__attribute__((used)) static void FUNC4(struct pcmcia_socket *skt)
{
	if (!(skt->state & SOCKET_SUSPEND)) {
		int status;

		if (!(skt->state & SOCKET_PRESENT))
			FUNC0(20);

		skt->ops->get_status(skt, &status);
		if ((skt->state & SOCKET_PRESENT) &&
		     !(status & SS_DETECT))
			FUNC2(skt);
		if (!(skt->state & SOCKET_PRESENT) &&
		    (status & SS_DETECT))
			FUNC1(skt);
	}
}
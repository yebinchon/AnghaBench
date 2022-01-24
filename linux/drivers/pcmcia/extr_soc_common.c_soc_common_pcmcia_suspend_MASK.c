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
struct soc_pcmcia_socket {TYPE_1__* ops; } ;
struct pcmcia_socket {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* socket_suspend ) (struct soc_pcmcia_socket*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct soc_pcmcia_socket*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct soc_pcmcia_socket*) ; 
 struct soc_pcmcia_socket* FUNC3 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC4(struct pcmcia_socket *sock)
{
	struct soc_pcmcia_socket *skt = FUNC3(sock);

	FUNC0(skt, 2, "suspending socket\n");

	FUNC1(skt);
	if (skt->ops->socket_suspend)
		skt->ops->socket_suspend(skt);

	return 0;
}
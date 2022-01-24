#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct soc_pcmcia_socket {unsigned int status; } ;
struct pcmcia_socket {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct soc_pcmcia_socket*) ; 
 struct soc_pcmcia_socket* FUNC1 (struct pcmcia_socket*) ; 

__attribute__((used)) static int
FUNC2(struct pcmcia_socket *sock, unsigned int *status)
{
	struct soc_pcmcia_socket *skt = FUNC1(sock);

	skt->status = FUNC0(skt);
	*status = skt->status;

	return 0;
}
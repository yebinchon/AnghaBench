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
struct pcmcia_socket {int state; } ;

/* Variables and functions */
 int EBUSY ; 
 int SOCKET_SUSPEND ; 
 int FUNC0 (struct pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_socket*) ; 
 int FUNC2 (struct pcmcia_socket*) ; 

__attribute__((used)) static int FUNC3(struct pcmcia_socket *skt)
{
	int err;
	if (!(skt->state & SOCKET_SUSPEND))
		return -EBUSY;

	FUNC1(skt);
	err = FUNC2(skt);
	if (!err)
		err = FUNC0(skt);
	return err;
}
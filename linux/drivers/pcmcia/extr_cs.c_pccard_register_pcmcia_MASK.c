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
struct pcmcia_socket {int state; int /*<<< orphan*/  skt_mutex; struct pcmcia_callback* callback; } ;
struct pcmcia_callback {int /*<<< orphan*/  (* add ) (struct pcmcia_socket*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int SOCKET_CARDBUS ; 
 int SOCKET_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pcmcia_socket*) ; 

int FUNC3(struct pcmcia_socket *s, struct pcmcia_callback *c)
{
	int ret = 0;

	/* s->skt_mutex also protects s->callback */
	FUNC0(&s->skt_mutex);

	if (c) {
		/* registration */
		if (s->callback) {
			ret = -EBUSY;
			goto err;
		}

		s->callback = c;

		if ((s->state & (SOCKET_PRESENT|SOCKET_CARDBUS)) == SOCKET_PRESENT)
			s->callback->add(s);
	} else
		s->callback = NULL;
 err:
	FUNC1(&s->skt_mutex);

	return ret;
}
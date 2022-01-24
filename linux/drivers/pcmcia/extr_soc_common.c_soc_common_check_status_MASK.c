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
struct TYPE_2__ {unsigned int csc_mask; } ;
struct soc_pcmcia_socket {unsigned int status; int /*<<< orphan*/  socket; TYPE_1__ cs_state; } ;

/* Variables and functions */
 unsigned int SS_BATDEAD ; 
 unsigned int SS_BATWARN ; 
 unsigned int SS_DETECT ; 
 unsigned int SS_READY ; 
 unsigned int SS_STSCHG ; 
 int /*<<< orphan*/  FUNC0 (struct soc_pcmcia_socket*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (struct soc_pcmcia_socket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  status_lock ; 

__attribute__((used)) static void FUNC5(struct soc_pcmcia_socket *skt)
{
	unsigned int events;

	FUNC0(skt, 4, "entering PCMCIA monitoring thread\n");

	do {
		unsigned int status;
		unsigned long flags;

		status = FUNC2(skt);

		FUNC3(&status_lock, flags);
		events = (status ^ skt->status) & skt->cs_state.csc_mask;
		skt->status = status;
		FUNC4(&status_lock, flags);

		FUNC0(skt, 4, "events: %s%s%s%s%s%s\n",
			events == 0         ? "<NONE>"   : "",
			events & SS_DETECT  ? "DETECT "  : "",
			events & SS_READY   ? "READY "   : "",
			events & SS_BATDEAD ? "BATDEAD " : "",
			events & SS_BATWARN ? "BATWARN " : "",
			events & SS_STSCHG  ? "STSCHG "  : "");

		if (events)
			FUNC1(&skt->socket, events);
	} while (events);
}
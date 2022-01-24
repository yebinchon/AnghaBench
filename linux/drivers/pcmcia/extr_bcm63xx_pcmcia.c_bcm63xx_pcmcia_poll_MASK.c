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
struct timer_list {int dummy; } ;
struct TYPE_2__ {unsigned int csc_mask; } ;
struct bcm63xx_pcmcia_socket {unsigned int old_status; int /*<<< orphan*/  timer; int /*<<< orphan*/  socket; int /*<<< orphan*/  lock; TYPE_1__ requested_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM63XX_PCMCIA_POLL_RATE ; 
 unsigned int FUNC0 (struct bcm63xx_pcmcia_socket*) ; 
 struct bcm63xx_pcmcia_socket* FUNC1 (struct bcm63xx_pcmcia_socket*,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct bcm63xx_pcmcia_socket *skt;
	unsigned int stat, events;

	skt = FUNC1(skt, t, timer);

	FUNC5(&skt->lock);

	stat = FUNC0(skt);

	/* keep only changed bits, and mask with required one from the
	 * core */
	events = (stat ^ skt->old_status) & skt->requested_state.csc_mask;
	skt->old_status = stat;
	FUNC6(&skt->lock);

	if (events)
		FUNC4(&skt->socket, events);

	FUNC2(&skt->timer,
		  jiffies + FUNC3(BCM63XX_PCMCIA_POLL_RATE));
}
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
struct tcpm_port {int /*<<< orphan*/  wq; } ;
struct pd_rx_event {int /*<<< orphan*/  work; int /*<<< orphan*/  msg; struct tcpm_port* port; } ;
struct pd_message {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct pd_rx_event* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pd_message const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcpm_pd_rx_handler ; 

void FUNC4(struct tcpm_port *port, const struct pd_message *msg)
{
	struct pd_rx_event *event;

	event = FUNC1(sizeof(*event), GFP_ATOMIC);
	if (!event)
		return;

	FUNC0(&event->work, tcpm_pd_rx_handler);
	event->port = port;
	FUNC2(&event->msg, msg, sizeof(*msg));
	FUNC3(port->wq, &event->work);
}
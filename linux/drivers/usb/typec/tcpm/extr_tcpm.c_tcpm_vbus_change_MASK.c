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
struct tcpm_port {int /*<<< orphan*/  event_work; int /*<<< orphan*/  wq; int /*<<< orphan*/  pd_event_lock; int /*<<< orphan*/  pd_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCPM_VBUS_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct tcpm_port *port)
{
	FUNC1(&port->pd_event_lock);
	port->pd_events |= TCPM_VBUS_EVENT;
	FUNC2(&port->pd_event_lock);
	FUNC0(port->wq, &port->event_work);
}
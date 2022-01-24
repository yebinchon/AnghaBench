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
struct zfcp_port {int /*<<< orphan*/  dev; int /*<<< orphan*/  rport_work; TYPE_1__* adapter; int /*<<< orphan*/  rport_task; } ;
struct TYPE_2__ {int /*<<< orphan*/  work_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  RPORT_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct zfcp_port *port)
{
	FUNC0(&port->dev);
	port->rport_task = RPORT_ADD;

	if (!FUNC2(port->adapter->work_queue, &port->rport_work))
		FUNC1(&port->dev);
}
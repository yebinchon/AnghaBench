#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ console; } ;
struct fwtty_port {int /*<<< orphan*/  con_data; TYPE_2__* fwcon_ops; TYPE_1__ port; int /*<<< orphan*/  lock; int /*<<< orphan*/  peer; int /*<<< orphan*/  max_payload; int /*<<< orphan*/  tx_fifo; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* notify ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FWCON_NOTIFY_DETACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCODE_100 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fwtty_port *port, bool reset)
{
	/* drop carrier (and all other line status) */
	if (reset)
		FUNC2(port, 0);

	FUNC4(&port->lock);

	/* reset dma fifo max transmission size back to S100 */
	port->max_payload = FUNC3(SCODE_100);
	FUNC1(&port->tx_fifo, port->max_payload);

	FUNC0(port->peer, NULL);
	FUNC5(&port->lock);

	if (port->port.console && port->fwcon_ops->notify)
		(*port->fwcon_ops->notify)(FWCON_NOTIFY_DETACH, port->con_data);
}
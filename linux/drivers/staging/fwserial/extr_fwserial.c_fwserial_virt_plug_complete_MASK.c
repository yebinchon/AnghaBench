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
struct virt_plug_params {int /*<<< orphan*/  fifo_len; int /*<<< orphan*/  fifo_lo; int /*<<< orphan*/  fifo_hi; int /*<<< orphan*/  status_lo; int /*<<< orphan*/  status_hi; } ;
struct TYPE_3__ {scalar_t__ console; } ;
struct fwtty_port {int /*<<< orphan*/  device; int /*<<< orphan*/  con_data; TYPE_2__* fwcon_ops; TYPE_1__ port; int /*<<< orphan*/  lock; int /*<<< orphan*/  max_payload; int /*<<< orphan*/  tx_fifo; } ;
struct fwtty_peer {scalar_t__ guid; int /*<<< orphan*/  unit; struct fwtty_port* port; int /*<<< orphan*/  fifo_len; int /*<<< orphan*/  max_payload; void* fifo_addr; void* status_addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* notify ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FWCON_NOTIFY_ATTACH ; 
 int /*<<< orphan*/  FWPS_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fwtty_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct fwtty_peer *peer,
					struct virt_plug_params *params)
{
	struct fwtty_port *port = peer->port;

	peer->status_addr = FUNC1(params->status_hi, params->status_lo);
	peer->fifo_addr = FUNC1(params->fifo_hi, params->fifo_lo);
	peer->fifo_len = FUNC0(params->fifo_len);
	FUNC6(peer, FWPS_ATTACHED);

	/* reconfigure tx_fifo optimally for this peer */
	FUNC7(&port->lock);
	port->max_payload = FUNC5(peer->max_payload, peer->fifo_len);
	FUNC3(&port->tx_fifo, port->max_payload);
	FUNC8(&peer->port->lock);

	if (port->port.console && port->fwcon_ops->notify)
		(*port->fwcon_ops->notify)(FWCON_NOTIFY_ATTACH, port->con_data);

	FUNC4(&peer->unit, "peer (guid:%016llx) connected on %s\n",
		   (unsigned long long)peer->guid, FUNC2(port->device));
}
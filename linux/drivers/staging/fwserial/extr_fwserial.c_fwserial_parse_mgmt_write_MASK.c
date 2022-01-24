#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fwtty_port {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  plug_req; } ;
struct fwtty_peer {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  unit; int /*<<< orphan*/  work; int /*<<< orphan*/  workfn; struct fwtty_port* port; TYPE_1__ work_params; } ;
struct TYPE_5__ {int /*<<< orphan*/  code; int /*<<< orphan*/  len; } ;
struct fwserial_mgmt_pkt {TYPE_2__ hdr; int /*<<< orphan*/  plug_rsp; int /*<<< orphan*/  plug_req; } ;
struct TYPE_6__ {unsigned long long offset; } ;

/* Variables and functions */
 scalar_t__ FWPS_GONE ; 
 scalar_t__ FWPS_PLUG_PENDING ; 
 scalar_t__ FWPS_UNPLUG_PENDING ; 
 int FWSC_CODE_MASK ; 
 int FWSC_RSP_NACK ; 
#define  FWSC_VIRT_CABLE_PLUG 131 
#define  FWSC_VIRT_CABLE_PLUG_RSP 130 
#define  FWSC_VIRT_CABLE_UNPLUG 129 
#define  FWSC_VIRT_CABLE_UNPLUG_RSP 128 
 int RCODE_ADDRESS_ERROR ; 
 int RCODE_COMPLETE ; 
 int RCODE_CONFLICT_ERROR ; 
 int RCODE_DATA_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwserial_handle_plug_req ; 
 int /*<<< orphan*/  fwserial_handle_unplug_req ; 
 TYPE_3__ fwserial_mgmt_addr_handler ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_peer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct fwtty_port*) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 struct fwtty_port* FUNC8 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_unbound_wq ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct fwtty_peer *peer,
				     struct fwserial_mgmt_pkt *pkt,
				     unsigned long long addr,
				     size_t len)
{
	struct fwtty_port *port = NULL;
	bool reset = false;
	int rcode;

	if (addr != fwserial_mgmt_addr_handler.offset || len < sizeof(pkt->hdr))
		return RCODE_ADDRESS_ERROR;

	if (len != FUNC0(pkt->hdr.len) ||
	    len != FUNC7(pkt->hdr.code))
		return RCODE_DATA_ERROR;

	FUNC10(&peer->lock);
	if (peer->state == FWPS_GONE) {
		/*
		 * This should never happen - it would mean that the
		 * remote unit that just wrote this transaction was
		 * already removed from the bus -- and the removal was
		 * processed before we rec'd this transaction
		 */
		FUNC4(&peer->unit, "peer already removed\n");
		FUNC11(&peer->lock);
		return RCODE_ADDRESS_ERROR;
	}

	rcode = RCODE_COMPLETE;

	FUNC3(&peer->unit, "mgmt: hdr.code: %04hx\n", pkt->hdr.code);

	switch (FUNC0(pkt->hdr.code) & FWSC_CODE_MASK) {
	case FWSC_VIRT_CABLE_PLUG:
		if (FUNC12(&peer->work)) {
			FUNC4(&peer->unit, "plug req: busy\n");
			rcode = RCODE_CONFLICT_ERROR;

		} else {
			peer->work_params.plug_req = pkt->plug_req;
			peer->workfn = fwserial_handle_plug_req;
			FUNC9(system_unbound_wq, &peer->work);
		}
		break;

	case FWSC_VIRT_CABLE_PLUG_RSP:
		if (peer->state != FWPS_PLUG_PENDING) {
			rcode = RCODE_CONFLICT_ERROR;

		} else if (FUNC0(pkt->hdr.code) & FWSC_RSP_NACK) {
			FUNC5(&peer->unit, "NACK plug rsp\n");
			port = FUNC8(peer);

		} else {
			struct fwtty_port *tmp = peer->port;

			FUNC2(peer, &pkt->plug_rsp);
			FUNC11(&peer->lock);

			FUNC6(tmp);
			FUNC10(&peer->lock);
		}
		break;

	case FWSC_VIRT_CABLE_UNPLUG:
		if (FUNC12(&peer->work)) {
			FUNC4(&peer->unit, "unplug req: busy\n");
			rcode = RCODE_CONFLICT_ERROR;
		} else {
			peer->workfn = fwserial_handle_unplug_req;
			FUNC9(system_unbound_wq, &peer->work);
		}
		break;

	case FWSC_VIRT_CABLE_UNPLUG_RSP:
		if (peer->state != FWPS_UNPLUG_PENDING) {
			rcode = RCODE_CONFLICT_ERROR;
		} else {
			if (FUNC0(pkt->hdr.code) & FWSC_RSP_NACK)
				FUNC5(&peer->unit, "NACK unplug?\n");
			port = FUNC8(peer);
			reset = true;
		}
		break;

	default:
		FUNC4(&peer->unit, "unknown mgmt code %d\n",
			  FUNC0(pkt->hdr.code));
		rcode = RCODE_DATA_ERROR;
	}
	FUNC11(&peer->lock);

	if (port)
		FUNC1(port, reset);

	return rcode;
}
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
struct work_struct {int dummy; } ;
struct virt_plug_params {int dummy; } ;
struct fwtty_port {int dummy; } ;
struct TYPE_4__ {struct virt_plug_params plug_req; } ;
struct fwtty_peer {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  unit; struct fwtty_port* port; int /*<<< orphan*/  timer; int /*<<< orphan*/  guid; TYPE_3__* serial; TYPE_1__ work_params; } ;
struct fwserial_mgmt_pkt {int dummy; } ;
struct TYPE_6__ {TYPE_2__* card; } ;
struct TYPE_5__ {int /*<<< orphan*/  guid; } ;

/* Variables and functions */
#define  FWPS_NOT_ATTACHED 129 
#define  FWPS_PLUG_PENDING 128 
 int FWPS_PLUG_RESPONDING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fwserial_mgmt_pkt*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwserial_mgmt_pkt*,struct fwtty_port*) ; 
 struct fwtty_port* FUNC3 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC4 (struct fwtty_port*,int) ; 
 int FUNC5 (struct fwtty_peer*,struct fwserial_mgmt_pkt*) ; 
 int /*<<< orphan*/  FUNC6 (struct fwtty_peer*,struct virt_plug_params*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct fwserial_mgmt_pkt*) ; 
 struct fwserial_mgmt_pkt* FUNC10 (int,int /*<<< orphan*/ ) ; 
 struct fwtty_port* FUNC11 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC12 (struct fwtty_peer*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct fwtty_peer* FUNC15 (struct work_struct*,struct work_struct*) ; 

__attribute__((used)) static void FUNC16(struct work_struct *work)
{
	struct fwtty_peer *peer = FUNC15(work, work);
	struct virt_plug_params *plug_req = &peer->work_params.plug_req;
	struct fwtty_port *port;
	struct fwserial_mgmt_pkt *pkt;
	int rcode;

	pkt = FUNC10(sizeof(*pkt), GFP_KERNEL);
	if (!pkt)
		return;

	port = FUNC3(peer);

	FUNC13(&peer->lock);

	switch (peer->state) {
	case FWPS_NOT_ATTACHED:
		if (!port) {
			FUNC7(&peer->unit, "no more ports avail\n");
			FUNC1(pkt);
		} else {
			peer->port = port;
			FUNC2(pkt, peer->port);
			FUNC12(peer, FWPS_PLUG_RESPONDING);
			/* don't release claimed port */
			port = NULL;
		}
		break;

	case FWPS_PLUG_PENDING:
		if (peer->serial->card->guid > peer->guid)
			goto cleanup;

		/* We lost - hijack the already-claimed port and send ok */
		FUNC0(&peer->timer);
		FUNC2(pkt, peer->port);
		FUNC12(peer, FWPS_PLUG_RESPONDING);
		break;

	default:
		FUNC1(pkt);
	}

	FUNC14(&peer->lock);
	if (port)
		FUNC4(port, false);

	rcode = FUNC5(peer, pkt);

	FUNC13(&peer->lock);
	if (peer->state == FWPS_PLUG_RESPONDING) {
		if (rcode == RCODE_COMPLETE) {
			struct fwtty_port *tmp = peer->port;

			FUNC6(peer, plug_req);
			FUNC14(&peer->lock);

			FUNC8(tmp);
			FUNC13(&peer->lock);
		} else {
			FUNC7(&peer->unit, "PLUG_RSP error (%d)\n", rcode);
			port = FUNC11(peer);
		}
	}
cleanup:
	FUNC14(&peer->lock);
	if (port)
		FUNC4(port, false);
	FUNC9(pkt);
}
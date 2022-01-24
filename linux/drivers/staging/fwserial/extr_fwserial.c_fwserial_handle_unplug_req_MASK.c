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
struct work_struct {int dummy; } ;
struct fwtty_port {int dummy; } ;
struct fwtty_peer {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  unit; int /*<<< orphan*/  timer; int /*<<< orphan*/  guid; TYPE_2__* serial; } ;
struct fwserial_mgmt_pkt {int dummy; } ;
struct TYPE_4__ {TYPE_1__* card; } ;
struct TYPE_3__ {int /*<<< orphan*/  guid; } ;

/* Variables and functions */
#define  FWPS_ATTACHED 129 
#define  FWPS_UNPLUG_PENDING 128 
 int FWPS_UNPLUG_RESPONDING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fwserial_mgmt_pkt*) ; 
 int /*<<< orphan*/  FUNC2 (struct fwserial_mgmt_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwtty_port*,int) ; 
 int FUNC4 (struct fwtty_peer*,struct fwserial_mgmt_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fwserial_mgmt_pkt*) ; 
 struct fwserial_mgmt_pkt* FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct fwtty_port* FUNC8 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC9 (struct fwtty_peer*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct fwtty_peer* FUNC12 (struct work_struct*,struct work_struct*) ; 

__attribute__((used)) static void FUNC13(struct work_struct *work)
{
	struct fwtty_peer *peer = FUNC12(work, work);
	struct fwtty_port *port = NULL;
	struct fwserial_mgmt_pkt *pkt;
	int rcode;

	pkt = FUNC7(sizeof(*pkt), GFP_KERNEL);
	if (!pkt)
		return;

	FUNC10(&peer->lock);

	switch (peer->state) {
	case FWPS_ATTACHED:
		FUNC2(pkt);
		FUNC9(peer, FWPS_UNPLUG_RESPONDING);
		break;

	case FWPS_UNPLUG_PENDING:
		if (peer->serial->card->guid > peer->guid)
			goto cleanup;

		/* We lost - send unplug rsp */
		FUNC0(&peer->timer);
		FUNC2(pkt);
		FUNC9(peer, FWPS_UNPLUG_RESPONDING);
		break;

	default:
		FUNC1(pkt);
	}

	FUNC11(&peer->lock);

	rcode = FUNC4(peer, pkt);

	FUNC10(&peer->lock);
	if (peer->state == FWPS_UNPLUG_RESPONDING) {
		if (rcode != RCODE_COMPLETE)
			FUNC5(&peer->unit, "UNPLUG_RSP error (%d)\n",
				  rcode);
		port = FUNC8(peer);
	}
cleanup:
	FUNC11(&peer->lock);
	if (port)
		FUNC3(port, true);
	FUNC6(pkt);
}
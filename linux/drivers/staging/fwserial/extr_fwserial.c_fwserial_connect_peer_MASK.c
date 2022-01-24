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
struct fwtty_port {int dummy; } ;
struct fwtty_peer {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; struct fwtty_port* port; int /*<<< orphan*/  unit; } ;
struct fwserial_mgmt_pkt {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FWPS_NOT_ATTACHED ; 
 scalar_t__ FWPS_PLUG_PENDING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int RCODE_COMPLETE ; 
 int RCODE_CONFLICT_ERROR ; 
 scalar_t__ VIRT_CABLE_PLUG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fwserial_mgmt_pkt*,struct fwtty_port*) ; 
 struct fwtty_port* FUNC2 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC3 (struct fwtty_port*,int) ; 
 int FUNC4 (struct fwtty_peer*,struct fwserial_mgmt_pkt*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (struct fwserial_mgmt_pkt*) ; 
 struct fwserial_mgmt_pkt* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC10 (struct fwtty_peer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct fwtty_peer *peer)
{
	struct fwtty_port *port;
	struct fwserial_mgmt_pkt *pkt;
	int err, rcode;

	pkt = FUNC7(sizeof(*pkt), GFP_KERNEL);
	if (!pkt)
		return -ENOMEM;

	port = FUNC2(peer);
	if (!port) {
		FUNC5(&peer->unit, "avail ports in use\n");
		err = -EBUSY;
		goto free_pkt;
	}

	FUNC11(&peer->lock);

	/* only initiate VIRT_CABLE_PLUG if peer is currently not attached */
	if (peer->state != FWPS_NOT_ATTACHED) {
		err = -EBUSY;
		goto release_port;
	}

	peer->port = port;
	FUNC10(peer, FWPS_PLUG_PENDING);

	FUNC1(pkt, peer->port);

	FUNC8(&peer->timer, jiffies + VIRT_CABLE_PLUG_TIMEOUT);
	FUNC12(&peer->lock);

	rcode = FUNC4(peer, pkt);

	FUNC11(&peer->lock);
	if (peer->state == FWPS_PLUG_PENDING && rcode != RCODE_COMPLETE) {
		if (rcode == RCODE_CONFLICT_ERROR)
			err = -EAGAIN;
		else
			err = -EIO;
		goto cancel_timer;
	}
	FUNC12(&peer->lock);

	FUNC6(pkt);
	return 0;

cancel_timer:
	FUNC0(&peer->timer);
	FUNC9(peer);
release_port:
	FUNC12(&peer->lock);
	FUNC3(port, false);
free_pkt:
	FUNC6(pkt);
	return err;
}
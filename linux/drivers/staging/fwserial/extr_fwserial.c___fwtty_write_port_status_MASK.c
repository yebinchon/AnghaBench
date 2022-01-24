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
struct fwtty_port {int /*<<< orphan*/  peer; } ;
struct fwtty_peer {int /*<<< orphan*/  status_addr; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  TCODE_WRITE_QUADLET_REQUEST ; 
 unsigned int FUNC0 (struct fwtty_port*) ; 
 int FUNC1 (struct fwtty_peer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*,int,int /*<<< orphan*/ *,struct fwtty_port*) ; 
 struct fwtty_peer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct fwtty_port *port)
{
	struct fwtty_peer *peer;
	int err = -ENOENT;
	unsigned int status = FUNC0(port);

	FUNC3();
	peer = FUNC2(port->peer);
	if (peer) {
		err = FUNC1(peer, TCODE_WRITE_QUADLET_REQUEST,
					    peer->status_addr, &status,
					    sizeof(status), NULL, port);
	}
	FUNC4();

	return err;
}
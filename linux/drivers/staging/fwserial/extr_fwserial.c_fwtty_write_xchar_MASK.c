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
struct TYPE_2__ {int /*<<< orphan*/  xchars; } ;
struct fwtty_port {int /*<<< orphan*/  peer; TYPE_1__ stats; } ;
struct fwtty_peer {int /*<<< orphan*/  fifo_addr; } ;
typedef  int /*<<< orphan*/  ch ;

/* Variables and functions */
 int /*<<< orphan*/  TCODE_WRITE_BLOCK_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_peer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,struct fwtty_port*) ; 
 struct fwtty_peer* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct fwtty_port *port, char ch)
{
	struct fwtty_peer *peer;

	++port->stats.xchars;

	FUNC0(port, "%02x\n", ch);

	FUNC3();
	peer = FUNC2(port->peer);
	if (peer) {
		FUNC1(peer, TCODE_WRITE_BLOCK_REQUEST,
				      peer->fifo_addr, &ch, sizeof(ch),
				      NULL, port);
	}
	FUNC4();
}
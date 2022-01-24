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
struct fwtty_peer {struct fw_serial* serial; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct fw_serial {int /*<<< orphan*/  kref; int /*<<< orphan*/ * ports; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  list; int /*<<< orphan*/  peer_list; } ;

/* Variables and functions */
 scalar_t__ create_loop_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fwtty_peer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fwloop_driver ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwserial_destroy ; 
 int /*<<< orphan*/  fwserial_list_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  fwtty_driver ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int num_ttys ; 

__attribute__((used)) static void FUNC9(struct fw_unit *unit)
{
	struct fwtty_peer *peer = FUNC1(&unit->device);
	struct fw_serial *serial = peer->serial;
	int i;

	FUNC7(&fwserial_list_mutex);
	FUNC3(peer);

	if (FUNC6(&serial->peer_list)) {
		/* unlink from the fwserial_list here */
		FUNC5(&serial->list);

		FUNC0(serial->debugfs);

		for (i = 0; i < num_ttys; ++i)
			FUNC2(fwtty_driver, serial->ports[i]);
		if (create_loop_dev)
			FUNC2(fwloop_driver, serial->ports[i]);
		FUNC4(&serial->kref, fwserial_destroy);
	}
	FUNC8(&fwserial_list_mutex);
}
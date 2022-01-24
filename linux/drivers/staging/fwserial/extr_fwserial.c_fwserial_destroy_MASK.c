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
struct kref {int dummy; } ;
struct fwtty_port {int index; int /*<<< orphan*/  port; int /*<<< orphan*/  rx_handler; struct fwtty_port** ports; } ;
struct fw_serial {int index; int /*<<< orphan*/  port; int /*<<< orphan*/  rx_handler; struct fw_serial** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,struct fwtty_port*,int,struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int num_ports ; 
 struct fwtty_port** port_table ; 
 int port_table_corrupt ; 
 int /*<<< orphan*/  port_table_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct fwtty_port* FUNC6 (struct kref*,struct kref*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct kref *kref)
{
	struct fw_serial *serial = FUNC6(kref, kref);
	struct fwtty_port **ports = serial->ports;
	int j, i = ports[0]->index;

	FUNC5();

	FUNC3(&port_table_lock);
	for (j = 0; j < num_ports; ++i, ++j) {
		port_table_corrupt |= port_table[i] != ports[j];
		FUNC0(port_table_corrupt, "port_table[%d]: %p != ports[%d]: %p",
			  i, port_table[i], j, ports[j]);

		port_table[i] = NULL;
	}
	FUNC4(&port_table_lock);

	for (j = 0; j < num_ports; ++j) {
		FUNC1(&ports[j]->rx_handler);
		FUNC7(&ports[j]->port);
		FUNC2(ports[j]);
	}
	FUNC2(serial);
}
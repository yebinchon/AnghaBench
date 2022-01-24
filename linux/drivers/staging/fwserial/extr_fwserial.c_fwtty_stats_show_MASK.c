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
struct seq_file {struct fw_serial* private; } ;
struct fwtty_port {int /*<<< orphan*/  index; } ;
struct fw_serial {TYPE_1__** ports; } ;
struct TYPE_2__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,struct fwtty_port*) ; 
 struct fwtty_port* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct fwtty_port*) ; 
 int num_ports ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	struct fw_serial *serial = m->private;
	struct fwtty_port *port;
	int i;

	for (i = 0; i < num_ports; ++i) {
		port = FUNC1(serial->ports[i]->index);
		if (port) {
			FUNC4(m, "%2d:", port->index);
			FUNC3(m, port);
			FUNC0(m, port);
			FUNC2(port);
			FUNC5(m, "\n");
		}
	}
	return 0;
}
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
struct seq_file {int dummy; } ;
struct fwtty_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int MAX_TOTAL_PORTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct fwtty_port* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC6(struct seq_file *m, void *v)
{
	struct fwtty_port *port;
	int i;

	FUNC5(m, "fwserinfo: 1.0 driver: 1.0\n");
	for (i = 0; i < MAX_TOTAL_PORTS && (port = FUNC1(i)); ++i) {
		FUNC4(m, "%2d:", i);
		if (FUNC0(CAP_SYS_ADMIN))
			FUNC3(m, port);
		FUNC2(port);
		FUNC5(m, "\n");
	}
	return 0;
}
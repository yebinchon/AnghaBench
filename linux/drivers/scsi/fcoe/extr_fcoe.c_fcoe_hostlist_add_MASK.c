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
struct fcoe_port {struct fcoe_interface* priv; } ;
struct fcoe_interface {int /*<<< orphan*/  list; } ;
struct fc_lport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fcoe_hostlist ; 
 struct fcoe_interface* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct fcoe_port* FUNC3 (struct fc_lport const*) ; 

__attribute__((used)) static int FUNC4(const struct fc_lport *lport)
{
	struct fcoe_interface *fcoe;
	struct fcoe_port *port;

	fcoe = FUNC0(FUNC1(lport));
	if (!fcoe) {
		port = FUNC3(lport);
		fcoe = port->priv;
		FUNC2(&fcoe->list, &fcoe_hostlist);
	}
	return 0;
}
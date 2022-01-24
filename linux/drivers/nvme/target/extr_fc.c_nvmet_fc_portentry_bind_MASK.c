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
struct nvmet_port {struct nvmet_fc_port_entry* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; } ;
struct nvmet_fc_tgtport {TYPE_1__ fc_target_port; struct nvmet_fc_port_entry* pe; } ;
struct nvmet_fc_port_entry {int /*<<< orphan*/  pe_list; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; struct nvmet_port* port; struct nvmet_fc_tgtport* tgtport; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_fc_portentry_list ; 
 int /*<<< orphan*/  nvmet_fc_tgtlock ; 

__attribute__((used)) static void
FUNC3(struct nvmet_fc_tgtport *tgtport,
			struct nvmet_fc_port_entry *pe,
			struct nvmet_port *port)
{
	FUNC2(&nvmet_fc_tgtlock);

	pe->tgtport = tgtport;
	tgtport->pe = pe;

	pe->port = port;
	port->priv = pe;

	pe->node_name = tgtport->fc_target_port.node_name;
	pe->port_name = tgtport->fc_target_port.port_name;
	FUNC0(&pe->pe_list);

	FUNC1(&pe->pe_list, &nvmet_fc_portentry_list);
}
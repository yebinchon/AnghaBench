#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct tb_regs_hop {int enable; int counter; int counter_enable; int ingress_fc; int egress_fc; int ingress_shared_buffer; int egress_shared_buffer; scalar_t__ unknown3; int /*<<< orphan*/  drop_packages; int /*<<< orphan*/  priority; scalar_t__ unknown2; int /*<<< orphan*/  weight; scalar_t__ unknown1; int /*<<< orphan*/  initial_credits; int /*<<< orphan*/  out_port; int /*<<< orphan*/  next_hop; int /*<<< orphan*/  member_0; } ;
struct tb_path {int activated; int path_length; int ingress_fc_enable; int egress_fc_enable; int ingress_shared_buffer; int egress_shared_buffer; int /*<<< orphan*/  tb; TYPE_6__* hops; int /*<<< orphan*/  drop_packages; int /*<<< orphan*/  priority; int /*<<< orphan*/  weight; int /*<<< orphan*/  clear_fc; int /*<<< orphan*/  nfc_credits; int /*<<< orphan*/  name; } ;
typedef  enum tb_path_port { ____Placeholder_tb_path_port } tb_path_port ;
struct TYPE_10__ {int in_counter_index; int in_hop_index; TYPE_2__* in_port; int /*<<< orphan*/  initial_credits; TYPE_1__* out_port; int /*<<< orphan*/  next_hop_index; } ;
struct TYPE_9__ {int /*<<< orphan*/  port; int /*<<< orphan*/  sw; } ;
struct TYPE_8__ {int /*<<< orphan*/  port; int /*<<< orphan*/  sw; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TB_CFG_HOPS ; 
 int TB_PATH_DESTINATION ; 
 int TB_PATH_INTERNAL ; 
 int TB_PATH_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_path*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_path*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,struct tb_regs_hop*) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,int) ; 
 int FUNC9 (TYPE_2__*,struct tb_regs_hop*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct tb_path *path)
{
	int i, res;
	enum tb_path_port out_mask, in_mask;
	if (path->activated) {
		FUNC3(path->tb, "trying to activate already activated path\n");
		return -EINVAL;
	}

	FUNC4(path->tb,
	       "activating %s path from %llx:%x to %llx:%x\n",
	       path->name, FUNC10(path->hops[0].in_port->sw),
	       path->hops[0].in_port->port,
	       FUNC10(path->hops[path->path_length - 1].out_port->sw),
	       path->hops[path->path_length - 1].out_port->port);

	/* Clear counters. */
	for (i = path->path_length - 1; i >= 0; i--) {
		if (path->hops[i].in_counter_index == -1)
			continue;
		res = FUNC7(path->hops[i].in_port,
					    path->hops[i].in_counter_index);
		if (res)
			goto err;
	}

	/* Add non flow controlled credits. */
	for (i = path->path_length - 1; i >= 0; i--) {
		res = FUNC6(path->hops[i].in_port,
					      path->nfc_credits);
		if (res) {
			FUNC2(path, i);
			goto err;
		}
	}

	/* Activate hops. */
	for (i = path->path_length - 1; i >= 0; i--) {
		struct tb_regs_hop hop = { 0 };

		/* If it is left active deactivate it first */
		FUNC0(path->hops[i].in_port,
				path->hops[i].in_hop_index, path->clear_fc);

		/* dword 0 */
		hop.next_hop = path->hops[i].next_hop_index;
		hop.out_port = path->hops[i].out_port->port;
		hop.initial_credits = path->hops[i].initial_credits;
		hop.unknown1 = 0;
		hop.enable = 1;

		/* dword 1 */
		out_mask = (i == path->path_length - 1) ?
				TB_PATH_DESTINATION : TB_PATH_INTERNAL;
		in_mask = (i == 0) ? TB_PATH_SOURCE : TB_PATH_INTERNAL;
		hop.weight = path->weight;
		hop.unknown2 = 0;
		hop.priority = path->priority;
		hop.drop_packages = path->drop_packages;
		hop.counter = path->hops[i].in_counter_index;
		hop.counter_enable = path->hops[i].in_counter_index != -1;
		hop.ingress_fc = path->ingress_fc_enable & in_mask;
		hop.egress_fc = path->egress_fc_enable & out_mask;
		hop.ingress_shared_buffer = path->ingress_shared_buffer
					    & in_mask;
		hop.egress_shared_buffer = path->egress_shared_buffer
					    & out_mask;
		hop.unknown3 = 0;

		FUNC8(path->hops[i].in_port, "Writing hop %d\n", i);
		FUNC5(&path->hops[i], &hop);
		res = FUNC9(path->hops[i].in_port, &hop, TB_CFG_HOPS,
				    2 * path->hops[i].in_hop_index, 2);
		if (res) {
			FUNC1(path, i);
			FUNC2(path, 0);
			goto err;
		}
	}
	path->activated = true;
	FUNC4(path->tb, "path activation complete\n");
	return 0;
err:
	FUNC3(path->tb, "path activation failed\n");
	return res;
}
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
struct tb_switch {struct tb_port* ports; int /*<<< orphan*/  tb; } ;
struct tb_regs_hop {size_t out_port; int next_hop; int /*<<< orphan*/  enable; } ;
struct tb_port {struct tb_port* remote; struct tb_switch* sw; } ;
struct tb_path {char const* name; size_t path_length; int activated; TYPE_1__* hops; int /*<<< orphan*/  tb; } ;
struct TYPE_2__ {int in_hop_index; int in_counter_index; int next_hop_index; struct tb_port* out_port; struct tb_port* in_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TB_CFG_HOPS ; 
 int TB_PATH_MAX_HOPS ; 
 TYPE_1__* FUNC0 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_path*) ; 
 struct tb_path* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tb_port*,struct tb_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_path*) ; 
 scalar_t__ FUNC5 (struct tb_port*,int,int) ; 
 scalar_t__ FUNC6 (struct tb_port*,int,int) ; 
 int FUNC7 (struct tb_port*,struct tb_regs_hop*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct tb_port*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct tb_port*,char*,int) ; 

struct tb_path *FUNC10(struct tb_port *src, int src_hopid,
				 struct tb_port *dst, int dst_hopid,
				 struct tb_port **last, const char *name)
{
	struct tb_port *out_port;
	struct tb_regs_hop hop;
	struct tb_path *path;
	struct tb_switch *sw;
	struct tb_port *p;
	size_t num_hops;
	int ret, i, h;

	if (src_hopid < 0 && dst) {
		/*
		 * For incomplete paths the intermediate HopID can be
		 * different from the one used by the protocol adapter
		 * so in that case find a path that ends on @dst with
		 * matching @dst_hopid. That should give us the correct
		 * HopID for the @src.
		 */
		src_hopid = FUNC3(src, dst, dst_hopid);
		if (!src_hopid)
			return NULL;
	}

	p = src;
	h = src_hopid;
	num_hops = 0;

	for (i = 0; p && i < TB_PATH_MAX_HOPS; i++) {
		sw = p->sw;

		ret = FUNC7(p, &hop, TB_CFG_HOPS, 2 * h, 2);
		if (ret) {
			FUNC9(p, "failed to read path at %d\n", h);
			return NULL;
		}

		/* If the hop is not enabled we got an incomplete path */
		if (!hop.enable)
			break;

		out_port = &sw->ports[hop.out_port];
		if (last)
			*last = out_port;

		h = hop.next_hop;
		p = out_port->remote;
		num_hops++;
	}

	path = FUNC2(sizeof(*path), GFP_KERNEL);
	if (!path)
		return NULL;

	path->name = name;
	path->tb = src->sw->tb;
	path->path_length = num_hops;
	path->activated = true;

	path->hops = FUNC0(num_hops, sizeof(*path->hops), GFP_KERNEL);
	if (!path->hops) {
		FUNC1(path);
		return NULL;
	}

	p = src;
	h = src_hopid;

	for (i = 0; i < num_hops; i++) {
		int next_hop;

		sw = p->sw;

		ret = FUNC7(p, &hop, TB_CFG_HOPS, 2 * h, 2);
		if (ret) {
			FUNC9(p, "failed to read path at %d\n", h);
			goto err;
		}

		if (FUNC5(p, h, h) < 0)
			goto err;

		out_port = &sw->ports[hop.out_port];
		next_hop = hop.next_hop;

		if (FUNC6(out_port, next_hop, next_hop) < 0) {
			FUNC8(p, h);
			goto err;
		}

		path->hops[i].in_port = p;
		path->hops[i].in_hop_index = h;
		path->hops[i].in_counter_index = -1;
		path->hops[i].out_port = out_port;
		path->hops[i].next_hop_index = next_hop;

		h = next_hop;
		p = out_port->remote;
	}

	return path;

err:
	FUNC9(src, "failed to discover path starting at HopID %d\n",
		     src_hopid);
	FUNC4(path);
	return NULL;
}
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
struct tb_tunnel {int /*<<< orphan*/  dst_port; int /*<<< orphan*/  src_port; struct tb_path** paths; } ;
struct tb_path {int path_length; TYPE_1__* hops; } ;
struct TYPE_2__ {int /*<<< orphan*/  next_hop_index; int /*<<< orphan*/  in_hop_index; } ;

/* Variables and functions */
 size_t TB_DP_AUX_PATH_IN ; 
 size_t TB_DP_AUX_PATH_OUT ; 
 size_t TB_DP_VIDEO_PATH_OUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct tb_tunnel *tunnel, bool active)
{
	int ret;

	if (active) {
		struct tb_path **paths;
		int last;

		paths = tunnel->paths;
		last = paths[TB_DP_VIDEO_PATH_OUT]->path_length - 1;

		FUNC2(tunnel->src_port,
			paths[TB_DP_VIDEO_PATH_OUT]->hops[0].in_hop_index,
			paths[TB_DP_AUX_PATH_OUT]->hops[0].in_hop_index,
			paths[TB_DP_AUX_PATH_IN]->hops[last].next_hop_index);

		FUNC2(tunnel->dst_port,
			paths[TB_DP_VIDEO_PATH_OUT]->hops[last].next_hop_index,
			paths[TB_DP_AUX_PATH_IN]->hops[0].in_hop_index,
			paths[TB_DP_AUX_PATH_OUT]->hops[last].next_hop_index);
	} else {
		FUNC1(tunnel->src_port);
		FUNC2(tunnel->src_port, 0, 0, 0);
		if (FUNC3(tunnel->dst_port))
			FUNC2(tunnel->dst_port, 0, 0, 0);
	}

	ret = FUNC0(tunnel->src_port, active);
	if (ret)
		return ret;

	if (FUNC3(tunnel->dst_port))
		return FUNC0(tunnel->dst_port, active);

	return 0;
}
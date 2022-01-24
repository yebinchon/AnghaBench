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
struct tb_tunnel {struct tb_port* src_port; struct tb_port* dst_port; struct tb_path** paths; int /*<<< orphan*/  activate; int /*<<< orphan*/  init; } ;
struct tb_port {int dummy; } ;
struct tb_path {int dummy; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 size_t TB_DP_AUX_PATH_IN ; 
 size_t TB_DP_AUX_PATH_OUT ; 
 int TB_DP_AUX_RX_HOPID ; 
 int TB_DP_AUX_TX_HOPID ; 
 int TB_DP_VIDEO_HOPID ; 
 size_t TB_DP_VIDEO_PATH_OUT ; 
 int /*<<< orphan*/  TB_TUNNEL_DP ; 
 int /*<<< orphan*/  tb_dp_activate ; 
 int /*<<< orphan*/  FUNC0 (struct tb_path*) ; 
 int /*<<< orphan*/  FUNC1 (struct tb_path*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_port*) ; 
 int /*<<< orphan*/  tb_dp_xchg_caps ; 
 struct tb_path* FUNC5 (struct tb_port*,int,struct tb_port*,int,struct tb_port**,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct tb_port*,char*) ; 
 struct tb_tunnel* FUNC8 (struct tb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tb_tunnel*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct tb_tunnel*) ; 
 int /*<<< orphan*/  FUNC11 (struct tb_tunnel*) ; 
 int /*<<< orphan*/  FUNC12 (struct tb_tunnel*,char*) ; 

struct tb_tunnel *FUNC13(struct tb *tb, struct tb_port *in)
{
	struct tb_tunnel *tunnel;
	struct tb_port *port;
	struct tb_path *path;

	if (!FUNC4(in))
		return NULL;

	tunnel = FUNC8(tb, 3, TB_TUNNEL_DP);
	if (!tunnel)
		return NULL;

	tunnel->init = tb_dp_xchg_caps;
	tunnel->activate = tb_dp_activate;
	tunnel->src_port = in;

	path = FUNC5(in, TB_DP_VIDEO_HOPID, NULL, -1,
				&tunnel->dst_port, "Video");
	if (!path) {
		/* Just disable the DP IN port */
		FUNC2(in, false);
		goto err_free;
	}
	tunnel->paths[TB_DP_VIDEO_PATH_OUT] = path;
	FUNC1(tunnel->paths[TB_DP_VIDEO_PATH_OUT], true);

	path = FUNC5(in, TB_DP_AUX_TX_HOPID, NULL, -1, NULL, "AUX TX");
	if (!path)
		goto err_deactivate;
	tunnel->paths[TB_DP_AUX_PATH_OUT] = path;
	FUNC0(tunnel->paths[TB_DP_AUX_PATH_OUT]);

	path = FUNC5(tunnel->dst_port, -1, in, TB_DP_AUX_RX_HOPID,
				&port, "AUX RX");
	if (!path)
		goto err_deactivate;
	tunnel->paths[TB_DP_AUX_PATH_IN] = path;
	FUNC0(tunnel->paths[TB_DP_AUX_PATH_IN]);

	/* Validate that the tunnel is complete */
	if (!FUNC6(tunnel->dst_port)) {
		FUNC7(in, "path does not end on a DP adapter, cleaning up\n");
		goto err_deactivate;
	}

	if (!FUNC4(tunnel->dst_port))
		goto err_deactivate;

	if (!FUNC3(tunnel->dst_port))
		goto err_deactivate;

	if (port != tunnel->src_port) {
		FUNC12(tunnel, "path is not complete, cleaning up\n");
		goto err_deactivate;
	}

	FUNC9(tunnel, "discovered\n");
	return tunnel;

err_deactivate:
	FUNC10(tunnel);
err_free:
	FUNC11(tunnel);

	return NULL;
}
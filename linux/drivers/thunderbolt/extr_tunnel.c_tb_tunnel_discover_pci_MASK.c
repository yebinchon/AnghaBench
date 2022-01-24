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
struct tb_tunnel {struct tb_port* dst_port; struct tb_port* src_port; struct tb_path** paths; int /*<<< orphan*/  activate; } ;
struct tb_port {int dummy; } ;
struct tb_path {int dummy; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 int TB_PCI_HOPID ; 
 size_t TB_PCI_PATH_DOWN ; 
 size_t TB_PCI_PATH_UP ; 
 int /*<<< orphan*/  TB_TUNNEL_PCI ; 
 struct tb_path* FUNC0 (struct tb_port*,int,struct tb_port*,int,struct tb_port**,char*) ; 
 int /*<<< orphan*/  tb_pci_activate ; 
 int /*<<< orphan*/  FUNC1 (struct tb_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct tb_port*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct tb_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tb_port*,char*) ; 
 struct tb_tunnel* FUNC6 (struct tb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct tb_tunnel*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct tb_tunnel*) ; 
 int /*<<< orphan*/  FUNC9 (struct tb_tunnel*) ; 
 int /*<<< orphan*/  FUNC10 (struct tb_tunnel*,char*) ; 

struct tb_tunnel *FUNC11(struct tb *tb, struct tb_port *down)
{
	struct tb_tunnel *tunnel;
	struct tb_path *path;

	if (!FUNC3(down))
		return NULL;

	tunnel = FUNC6(tb, 2, TB_TUNNEL_PCI);
	if (!tunnel)
		return NULL;

	tunnel->activate = tb_pci_activate;
	tunnel->src_port = down;

	/*
	 * Discover both paths even if they are not complete. We will
	 * clean them up by calling tb_tunnel_deactivate() below in that
	 * case.
	 */
	path = FUNC0(down, TB_PCI_HOPID, NULL, -1,
				&tunnel->dst_port, "PCIe Up");
	if (!path) {
		/* Just disable the downstream port */
		FUNC2(down, false);
		goto err_free;
	}
	tunnel->paths[TB_PCI_PATH_UP] = path;
	FUNC1(tunnel->paths[TB_PCI_PATH_UP]);

	path = FUNC0(tunnel->dst_port, -1, down, TB_PCI_HOPID, NULL,
				"PCIe Down");
	if (!path)
		goto err_deactivate;
	tunnel->paths[TB_PCI_PATH_DOWN] = path;
	FUNC1(tunnel->paths[TB_PCI_PATH_DOWN]);

	/* Validate that the tunnel is complete */
	if (!FUNC4(tunnel->dst_port)) {
		FUNC5(tunnel->dst_port,
			     "path does not end on a PCIe adapter, cleaning up\n");
		goto err_deactivate;
	}

	if (down != tunnel->src_port) {
		FUNC10(tunnel, "path is not complete, cleaning up\n");
		goto err_deactivate;
	}

	if (!FUNC3(tunnel->dst_port)) {
		FUNC10(tunnel,
			       "tunnel is not fully activated, cleaning up\n");
		goto err_deactivate;
	}

	FUNC7(tunnel, "discovered\n");
	return tunnel;

err_deactivate:
	FUNC8(tunnel);
err_free:
	FUNC9(tunnel);

	return NULL;
}
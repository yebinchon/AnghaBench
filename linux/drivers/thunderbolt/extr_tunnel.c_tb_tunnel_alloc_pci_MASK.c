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
struct tb_tunnel {struct tb_path** paths; struct tb_port* dst_port; struct tb_port* src_port; int /*<<< orphan*/  activate; } ;
struct tb_port {int dummy; } ;
struct tb_path {int dummy; } ;
struct tb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_PCI_HOPID ; 
 size_t TB_PCI_PATH_DOWN ; 
 size_t TB_PCI_PATH_UP ; 
 int /*<<< orphan*/  TB_TUNNEL_PCI ; 
 struct tb_path* FUNC0 (struct tb*,struct tb_port*,int /*<<< orphan*/ ,struct tb_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tb_pci_activate ; 
 int /*<<< orphan*/  FUNC1 (struct tb_path*) ; 
 struct tb_tunnel* FUNC2 (struct tb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tb_tunnel*) ; 

struct tb_tunnel *FUNC4(struct tb *tb, struct tb_port *up,
				      struct tb_port *down)
{
	struct tb_tunnel *tunnel;
	struct tb_path *path;

	tunnel = FUNC2(tb, 2, TB_TUNNEL_PCI);
	if (!tunnel)
		return NULL;

	tunnel->activate = tb_pci_activate;
	tunnel->src_port = down;
	tunnel->dst_port = up;

	path = FUNC0(tb, down, TB_PCI_HOPID, up, TB_PCI_HOPID, 0,
			     "PCIe Down");
	if (!path) {
		FUNC3(tunnel);
		return NULL;
	}
	FUNC1(path);
	tunnel->paths[TB_PCI_PATH_DOWN] = path;

	path = FUNC0(tb, up, TB_PCI_HOPID, down, TB_PCI_HOPID, 0,
			     "PCIe Up");
	if (!path) {
		FUNC3(tunnel);
		return NULL;
	}
	FUNC1(path);
	tunnel->paths[TB_PCI_PATH_UP] = path;

	return tunnel;
}
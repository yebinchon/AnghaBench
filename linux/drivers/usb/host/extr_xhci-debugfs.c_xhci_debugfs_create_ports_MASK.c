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
struct xhci_port {int dummy; } ;
struct xhci_hcd {struct xhci_port* hw_ports; int /*<<< orphan*/  hcs_params1; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  port_name ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC1 (char*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct xhci_port*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  port_fops ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct xhci_hcd *xhci,
				      struct dentry *parent)
{
	unsigned int		num_ports;
	char			port_name[8];
	struct xhci_port	*port;
	struct dentry		*dir;

	num_ports = FUNC0(xhci->hcs_params1);

	parent = FUNC1("ports", parent);

	while (num_ports--) {
		FUNC3(port_name, sizeof(port_name), "port%02d",
			  num_ports + 1);
		dir = FUNC1(port_name, parent);
		port = &xhci->hw_ports[num_ports];
		FUNC2("portsc", 0644, dir, port, &port_fops);
	}
}
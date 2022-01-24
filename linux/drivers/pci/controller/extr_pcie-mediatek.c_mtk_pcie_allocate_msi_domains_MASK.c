#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mtk_pcie_port {int /*<<< orphan*/  inner_domain; TYPE_1__* pcie; int /*<<< orphan*/  msi_domain; int /*<<< orphan*/  lock; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MTK_MSI_IRQS_NUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mtk_pcie_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi_domain_ops ; 
 int /*<<< orphan*/  mtk_msi_domain_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fwnode_handle* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fwnode_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mtk_pcie_port *port)
{
	struct fwnode_handle *fwnode = FUNC4(port->pcie->dev->of_node);

	FUNC3(&port->lock);

	port->inner_domain = FUNC1(fwnode, MTK_MSI_IRQS_NUM,
						      &msi_domain_ops, port);
	if (!port->inner_domain) {
		FUNC0(port->pcie->dev, "failed to create IRQ domain\n");
		return -ENOMEM;
	}

	port->msi_domain = FUNC5(fwnode, &mtk_msi_domain_info,
						     port->inner_domain);
	if (!port->msi_domain) {
		FUNC0(port->pcie->dev, "failed to create MSI domain\n");
		FUNC2(port->inner_domain);
		return -ENOMEM;
	}

	return 0;
}
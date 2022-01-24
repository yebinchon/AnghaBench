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
struct mtk_pcie_port {int /*<<< orphan*/  sys_ck; int /*<<< orphan*/  ahb_ck; int /*<<< orphan*/  aux_ck; int /*<<< orphan*/  axi_ck; int /*<<< orphan*/  obff_ck; int /*<<< orphan*/  pipe_ck; int /*<<< orphan*/  phy; int /*<<< orphan*/  slot; int /*<<< orphan*/  reset; struct mtk_pcie* pcie; } ;
struct mtk_pcie {TYPE_1__* soc; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* startup ) (struct mtk_pcie_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_pcie_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mtk_pcie_port*) ; 

__attribute__((used)) static void FUNC12(struct mtk_pcie_port *port)
{
	struct mtk_pcie *pcie = port->pcie;
	struct device *dev = pcie->dev;
	int err;

	err = FUNC1(port->sys_ck);
	if (err) {
		FUNC2(dev, "failed to enable sys_ck%d clock\n", port->slot);
		goto err_sys_clk;
	}

	err = FUNC1(port->ahb_ck);
	if (err) {
		FUNC2(dev, "failed to enable ahb_ck%d\n", port->slot);
		goto err_ahb_clk;
	}

	err = FUNC1(port->aux_ck);
	if (err) {
		FUNC2(dev, "failed to enable aux_ck%d\n", port->slot);
		goto err_aux_clk;
	}

	err = FUNC1(port->axi_ck);
	if (err) {
		FUNC2(dev, "failed to enable axi_ck%d\n", port->slot);
		goto err_axi_clk;
	}

	err = FUNC1(port->obff_ck);
	if (err) {
		FUNC2(dev, "failed to enable obff_ck%d\n", port->slot);
		goto err_obff_clk;
	}

	err = FUNC1(port->pipe_ck);
	if (err) {
		FUNC2(dev, "failed to enable pipe_ck%d\n", port->slot);
		goto err_pipe_clk;
	}

	FUNC9(port->reset);
	FUNC10(port->reset);

	err = FUNC6(port->phy);
	if (err) {
		FUNC2(dev, "failed to initialize port%d phy\n", port->slot);
		goto err_phy_init;
	}

	err = FUNC8(port->phy);
	if (err) {
		FUNC2(dev, "failed to power on port%d phy\n", port->slot);
		goto err_phy_on;
	}

	if (!pcie->soc->startup(port))
		return;

	FUNC3(dev, "Port%d link down\n", port->slot);

	FUNC7(port->phy);
err_phy_on:
	FUNC5(port->phy);
err_phy_init:
	FUNC0(port->pipe_ck);
err_pipe_clk:
	FUNC0(port->obff_ck);
err_obff_clk:
	FUNC0(port->axi_ck);
err_axi_clk:
	FUNC0(port->aux_ck);
err_aux_clk:
	FUNC0(port->ahb_ck);
err_ahb_clk:
	FUNC0(port->sys_ck);
err_sys_clk:
	FUNC4(port);
}
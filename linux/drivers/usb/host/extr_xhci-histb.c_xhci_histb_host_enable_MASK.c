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
struct xhci_hcd_histb {int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  utmi_clk; int /*<<< orphan*/  pipe_clk; int /*<<< orphan*/  soft_reset; int /*<<< orphan*/  dev; int /*<<< orphan*/  suspend_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xhci_hcd_histb *histb)
{
	int ret;

	ret = FUNC1(histb->bus_clk);
	if (ret) {
		FUNC2(histb->dev, "failed to enable bus clk\n");
		return ret;
	}

	ret = FUNC1(histb->utmi_clk);
	if (ret) {
		FUNC2(histb->dev, "failed to enable utmi clk\n");
		goto err_utmi_clk;
	}

	ret = FUNC1(histb->pipe_clk);
	if (ret) {
		FUNC2(histb->dev, "failed to enable pipe clk\n");
		goto err_pipe_clk;
	}

	ret = FUNC1(histb->suspend_clk);
	if (ret) {
		FUNC2(histb->dev, "failed to enable suspend clk\n");
		goto err_suspend_clk;
	}

	FUNC3(histb->soft_reset);

	return 0;

err_suspend_clk:
	FUNC0(histb->pipe_clk);
err_pipe_clk:
	FUNC0(histb->utmi_clk);
err_utmi_clk:
	FUNC0(histb->bus_clk);

	return ret;
}
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
struct xhci_hcd_histb {void* suspend_clk; void* pipe_clk; void* utmi_clk; void* bus_clk; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct xhci_hcd_histb *histb)
{
	struct device *dev = histb->dev;

	histb->bus_clk = FUNC3(dev, "bus");
	if (FUNC0(histb->bus_clk)) {
		FUNC2(dev, "fail to get bus clk\n");
		return FUNC1(histb->bus_clk);
	}

	histb->utmi_clk = FUNC3(dev, "utmi");
	if (FUNC0(histb->utmi_clk)) {
		FUNC2(dev, "fail to get utmi clk\n");
		return FUNC1(histb->utmi_clk);
	}

	histb->pipe_clk = FUNC3(dev, "pipe");
	if (FUNC0(histb->pipe_clk)) {
		FUNC2(dev, "fail to get pipe clk\n");
		return FUNC1(histb->pipe_clk);
	}

	histb->suspend_clk = FUNC3(dev, "suspend");
	if (FUNC0(histb->suspend_clk)) {
		FUNC2(dev, "fail to get suspend clk\n");
		return FUNC1(histb->suspend_clk);
	}

	return 0;
}
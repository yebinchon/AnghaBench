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
struct xhci_hcd_histb {int /*<<< orphan*/  bus_clk; int /*<<< orphan*/  utmi_clk; int /*<<< orphan*/  pipe_clk; int /*<<< orphan*/  suspend_clk; int /*<<< orphan*/  soft_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct xhci_hcd_histb *histb)
{
	FUNC1(histb->soft_reset);

	FUNC0(histb->suspend_clk);
	FUNC0(histb->pipe_clk);
	FUNC0(histb->utmi_clk);
	FUNC0(histb->bus_clk);
}
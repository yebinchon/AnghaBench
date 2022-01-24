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
struct tegra_xusb_port {int /*<<< orphan*/  index; int /*<<< orphan*/  padctl; } ;
struct tegra_xusb_lane {int dummy; } ;

/* Variables and functions */
 struct tegra_xusb_lane* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tegra_xusb_lane *
FUNC1(struct tegra_xusb_port *port)
{
	return FUNC0(port->padctl, "hsic", port->index);
}
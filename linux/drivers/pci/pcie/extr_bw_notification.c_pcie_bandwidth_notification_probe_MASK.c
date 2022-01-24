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
struct pcie_device {int /*<<< orphan*/  port; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  pcie_bw_notification_handler ; 
 int /*<<< orphan*/  pcie_bw_notification_irq ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct pcie_device*) ; 

__attribute__((used)) static int FUNC3(struct pcie_device *srv)
{
	int ret;

	/* Single-width or single-speed ports do not have to support this. */
	if (!FUNC1(srv->port))
		return -ENODEV;

	ret = FUNC2(srv->irq, pcie_bw_notification_irq,
				   pcie_bw_notification_handler,
				   IRQF_SHARED, "PCIe BW notif", srv);
	if (ret)
		return ret;

	FUNC0(srv->port);

	return 0;
}
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
struct TYPE_2__ {int /*<<< orphan*/  release; } ;
struct pci_host_bridge {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pci_host_bridge* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_pci_release_host_bridge_dev ; 
 int /*<<< orphan*/  FUNC1 (struct pci_host_bridge*) ; 

struct pci_host_bridge *FUNC2(struct device *dev,
						   size_t priv)
{
	struct pci_host_bridge *bridge;

	bridge = FUNC0(dev, sizeof(*bridge) + priv, GFP_KERNEL);
	if (!bridge)
		return NULL;

	FUNC1(bridge);
	bridge->dev.release = devm_pci_release_host_bridge_dev;

	return bridge;
}
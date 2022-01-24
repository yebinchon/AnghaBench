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
struct pci_host_bridge {int /*<<< orphan*/  windows; int /*<<< orphan*/  (* release_fn ) (struct pci_host_bridge*) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_host_bridge*) ; 
 struct pci_host_bridge* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dev)
{
	struct pci_host_bridge *bridge = FUNC2(dev);

	if (bridge->release_fn)
		bridge->release_fn(bridge);

	FUNC0(&bridge->windows);
}
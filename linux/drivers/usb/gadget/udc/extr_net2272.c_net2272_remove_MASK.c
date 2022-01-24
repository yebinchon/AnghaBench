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
struct net2272 {int /*<<< orphan*/  dev; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  gadget; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_registers ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct net2272*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct net2272 *dev)
{
	FUNC4(&dev->gadget);
	FUNC2(dev->irq, dev);
	FUNC3(dev->base_addr);
	FUNC1(dev->dev, &dev_attr_registers);

	FUNC0(dev->dev, "unbind\n");
}
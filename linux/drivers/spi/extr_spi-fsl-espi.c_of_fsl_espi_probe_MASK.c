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
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct device*,struct resource*,unsigned int,unsigned int) ; 
 unsigned int FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 unsigned int FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *ofdev)
{
	struct device *dev = &ofdev->dev;
	struct device_node *np = ofdev->dev.of_node;
	struct resource mem;
	unsigned int irq, num_cs;
	int ret;

	if (FUNC5(np, "mode")) {
		FUNC0(dev, "mode property is not supported on ESPI!\n");
		return -EINVAL;
	}

	num_cs = FUNC4(dev);
	if (!num_cs)
		return -EINVAL;

	ret = FUNC3(np, 0, &mem);
	if (ret)
		return ret;

	irq = FUNC2(np, 0);
	if (!irq)
		return -EINVAL;

	return FUNC1(dev, &mem, irq, num_cs);
}
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
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/ ** sprd_port ; 

__attribute__((used)) static int FUNC4(int index, struct device *dev)
{
	struct device_node *np;
	int ret = index;

	if (!FUNC1(CONFIG_OF))
		return ret;

	np = dev->of_node;
	if (!np)
		return ret;

	ret = FUNC3(np, "serial");
	if (ret < 0)
		ret = index;
	else if (ret >= FUNC0(sprd_port) || sprd_port[ret] != NULL) {
		FUNC2(dev, "requested serial port %d not available.\n", ret);
		ret = index;
	}

	return ret;
}
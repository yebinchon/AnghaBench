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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct esp {int cfreq; int /*<<< orphan*/  dev; } ;
struct device_node {struct device_node* parent; } ;

/* Variables and functions */
 int FUNC0 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct esp *esp)
{
	struct platform_device *op = FUNC1(esp->dev);
	struct device_node *bus_dp, *dp;
	int fmhz;

	dp = op->dev.of_node;
	bus_dp = dp->parent;

	fmhz = FUNC0(dp, "clock-frequency", 0);
	if (fmhz == 0)
		fmhz = FUNC0(bus_dp, "clock-frequency", 0);

	esp->cfreq = fmhz;
}
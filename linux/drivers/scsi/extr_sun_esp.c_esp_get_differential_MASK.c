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
struct esp {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FLAG_DIFFERENTIAL ; 
 scalar_t__ FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct esp *esp)
{
	struct platform_device *op = FUNC1(esp->dev);
	struct device_node *dp;

	dp = op->dev.of_node;
	if (FUNC0(dp, "differential", NULL))
		esp->flags |= ESP_FLAG_DIFFERENTIAL;
	else
		esp->flags &= ~ESP_FLAG_DIFFERENTIAL;
}
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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct platform_device* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static struct device *FUNC3(struct device *dev,
						const char *compatible)
{
	struct platform_device *pdev;
	struct device_node *np;

	np = FUNC1(dev->of_node, compatible);
	if (!np)
		return NULL;

	pdev = FUNC0(np);
	FUNC2(np);
	if (!pdev)
		return NULL;

	return &pdev->dev;
}
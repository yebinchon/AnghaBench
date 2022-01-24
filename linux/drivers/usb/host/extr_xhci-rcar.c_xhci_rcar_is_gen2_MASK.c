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
 scalar_t__ FUNC0 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC1(struct device *dev)
{
	struct device_node *node = dev->of_node;

	return FUNC0(node, "renesas,xhci-r8a7790") ||
		FUNC0(node, "renesas,xhci-r8a7791") ||
		FUNC0(node, "renesas,xhci-r8a7793") ||
		FUNC0(node, "renesas,rcar-gen2-xhci");
}
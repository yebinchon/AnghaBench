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

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 

bool FUNC4(struct device_node *np)
{
	struct device_node *node = FUNC1(np);

	while (node) {
		if (FUNC3(node, "dma-coherent")) {
			FUNC2(node);
			return true;
		}
		node = FUNC0(node);
	}
	FUNC2(node);
	return false;
}
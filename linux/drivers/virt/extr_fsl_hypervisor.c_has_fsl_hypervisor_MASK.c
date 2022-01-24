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
 struct device_node* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct device_node *node;
	int ret;

	node = FUNC0("/hypervisor");
	if (!node)
		return 0;

	ret = FUNC1(node, "fsl,hv-version", NULL) != NULL;

	FUNC2(node);

	return ret;
}
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
struct of_phandle_args {scalar_t__* args; } ;
struct device_node {char* name; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* kdev ; 
 struct device_node* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int,int,struct of_phandle_args*) ; 
 int FUNC3 (struct device_node*,char*,char const*) ; 

__attribute__((used)) static int FUNC4(struct device_node *np, const char *name,
					const char **dma_instance)
{
	struct of_phandle_args args;
	struct device_node *dma_node;
	int index;

	dma_node = FUNC1(np, "ti,navigator-dmas", 0);
	if (!dma_node)
		return -ENODEV;

	*dma_instance = dma_node->name;
	index = FUNC3(np, "ti,navigator-dma-names", name);
	if (index < 0) {
		FUNC0(kdev->dev, "No 'ti,navigator-dma-names' property\n");
		return -ENODEV;
	}

	if (FUNC2(np, "ti,navigator-dmas",
					1, index, &args)) {
		FUNC0(kdev->dev, "Missing the phandle args name %s\n", name);
		return -ENODEV;
	}

	if (args.args[0] < 0) {
		FUNC0(kdev->dev, "Missing args for %s\n", name);
		return -ENODEV;
	}

	return args.args[0];
}
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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hidg_func_node {int /*<<< orphan*/  node; struct hidg_func_descriptor* func; } ;
struct hidg_func_descriptor {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct hidg_func_descriptor* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hidg_func_list ; 
 struct hidg_func_node* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct hidg_func_descriptor *func = FUNC1(&pdev->dev);
	struct hidg_func_node *entry;

	if (!func) {
		FUNC0(&pdev->dev, "Platform data missing\n");
		return -ENODEV;
	}

	entry = FUNC2(sizeof(*entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	entry->func = func;
	FUNC3(&entry->node, &hidg_func_list);

	return 0;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct device_node* FUNC0 (char const*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,char*,char const**) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct device_node*,...) ; 

__attribute__((used)) static struct device_node *FUNC5(struct device_node *info_node)
{
	struct device_node *node;
	const char *path;
	u32 val;
	int ret;

	ret = FUNC3(info_node, "target", &val);
	if (!ret) {
		node = FUNC1(val);
		if (!node)
			FUNC4("find target, node: %pOF, phandle 0x%x not found\n",
			       info_node, val);
		return node;
	}

	ret = FUNC2(info_node, "target-path", &path);
	if (!ret) {
		node =  FUNC0(path);
		if (!node)
			FUNC4("find target, node: %pOF, path '%s' not found\n",
			       info_node, path);
		return node;
	}

	FUNC4("find target, node: %pOF, no target property\n", info_node);

	return NULL;
}
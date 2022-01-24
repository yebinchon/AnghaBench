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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const) ; 
 struct device_node* FUNC1 (struct device_node const*,struct device_node*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 

__attribute__((used)) static struct device_node *FUNC3
				(const struct device_node *parent, int reg_val)
{
	struct device_node *node = NULL;
	int size;
	const __be32 *addr;

	for (;;) {
		node = FUNC1(parent, node);
		if (!node)
			break;
		addr = FUNC2(node, "reg", &size);
		if (addr && (FUNC0(*addr) == reg_val))
			break;
	}
	return node;
}
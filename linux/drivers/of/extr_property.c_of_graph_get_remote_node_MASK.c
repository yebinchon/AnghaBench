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
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

struct device_node *FUNC5(const struct device_node *node,
					     u32 port, u32 endpoint)
{
	struct device_node *endpoint_node, *remote;

	endpoint_node = FUNC1(node, port, endpoint);
	if (!endpoint_node) {
		FUNC4("no valid endpoint (%d, %d) for node %pOF\n",
			 port, endpoint, node);
		return NULL;
	}

	remote = FUNC2(endpoint_node);
	FUNC3(endpoint_node);
	if (!remote) {
		FUNC4("no valid remote node\n");
		return NULL;
	}

	if (!FUNC0(remote)) {
		FUNC4("not available for remote node\n");
		FUNC3(remote);
		return NULL;
	}

	return remote;
}
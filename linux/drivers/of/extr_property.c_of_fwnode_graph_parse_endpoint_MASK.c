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
struct fwnode_handle {int dummy; } ;
struct fwnode_endpoint {int /*<<< orphan*/  id; int /*<<< orphan*/  port; struct fwnode_handle const* local_fwnode; } ;
typedef  struct device_node const device_node ;

/* Variables and functions */
 struct device_node const* FUNC0 (struct device_node const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node const*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node const*,char*,int /*<<< orphan*/ *) ; 
 struct device_node const* FUNC3 (struct fwnode_handle const*) ; 

__attribute__((used)) static int FUNC4(const struct fwnode_handle *fwnode,
					  struct fwnode_endpoint *endpoint)
{
	const struct device_node *node = FUNC3(fwnode);
	struct device_node *port_node = FUNC0(node);

	endpoint->local_fwnode = fwnode;

	FUNC2(port_node, "reg", &endpoint->port);
	FUNC2(node, "reg", &endpoint->id);

	FUNC1(port_node);

	return 0;
}
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
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_node const*,char const*) ; 
 int FUNC1 (struct device_node const*,char const*,char const**,size_t) ; 
 struct device_node* FUNC2 (struct fwnode_handle const*) ; 

__attribute__((used)) static int
FUNC3(const struct fwnode_handle *fwnode,
				     const char *propname, const char **val,
				     size_t nval)
{
	const struct device_node *node = FUNC2(fwnode);

	return val ?
		FUNC1(node, propname, val, nval) :
		FUNC0(node, propname);
}
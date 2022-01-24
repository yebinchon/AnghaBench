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
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char const* FUNC1 (char const*,char) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char const*,size_t) ; 

bool FUNC4(const struct device_node *np, const char *name)
{
	const char *node_name;
	size_t len;

	if (!np)
		return false;

	node_name = FUNC0(np->full_name);
	len = FUNC1(node_name, '@') - node_name;

	return (FUNC2(name) == len) && (FUNC3(node_name, name, len) == 0);
}
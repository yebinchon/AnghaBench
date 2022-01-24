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
 struct device_node* FUNC0 (struct device_node*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 char* FUNC2 (char const*,char) ; 
 char* FUNC3 (char const*,char) ; 

struct device_node *FUNC4(struct device_node *node,
						const char *path)
{
	const char *separator = FUNC2(path, ':');

	while (node && *path == '/') {
		struct device_node *tmp = node;

		path++; /* Increment past '/' delimiter */
		node = FUNC0(node, path);
		FUNC1(tmp);
		path = FUNC3(path, '/');
		if (separator && separator < path)
			break;
	}
	return node;
}
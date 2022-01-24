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
 struct device_node* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node const*) ; 

__attribute__((used)) static struct device_node *FUNC2(const struct device_node *node)
{
	struct device_node *np;

	np = FUNC1(node);
	if (!np)
		return NULL;

	np = FUNC0(np);

	return np;
}
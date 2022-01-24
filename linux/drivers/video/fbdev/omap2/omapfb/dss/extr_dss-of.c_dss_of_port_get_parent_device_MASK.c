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
struct property {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct property* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 

struct device_node *FUNC3(struct device_node *port)
{
	struct device_node *np;
	int i;

	if (!port)
		return NULL;

	np = FUNC2(port);

	for (i = 0; i < 2 && np; ++i) {
		struct property *prop;

		prop = FUNC0(np, "compatible", NULL);

		if (prop)
			return np;

		np = FUNC1(np);
	}

	return NULL;
}
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
 struct device_node* FUNC0 (struct device_node const*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,char*) ; 

struct device_node *
FUNC2(const struct device_node *parent,
			     struct device_node *prev)
{
	struct device_node *ep = NULL;

	if (!parent)
		return NULL;

	do {
		ep = FUNC0(parent, prev);
		if (!ep)
			return NULL;
		prev = ep;
	} while (!FUNC1(ep, "endpoint"));

	return ep;
}
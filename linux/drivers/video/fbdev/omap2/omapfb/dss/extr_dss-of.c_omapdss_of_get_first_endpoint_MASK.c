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
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC2 (struct device_node const*,int /*<<< orphan*/ *) ; 

struct device_node *
FUNC3(const struct device_node *parent)
{
	struct device_node *port, *ep;

	port = FUNC2(parent, NULL);

	if (!port)
		return NULL;

	ep = FUNC1(port, NULL);

	FUNC0(port);

	return ep;
}
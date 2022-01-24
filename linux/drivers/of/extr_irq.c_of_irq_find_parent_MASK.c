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
typedef  int /*<<< orphan*/  phandle ;

/* Variables and functions */
 int OF_IMAP_NO_PHANDLE ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct device_node* of_irq_dflt_pic ; 
 int of_irq_workarounds ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

struct device_node *FUNC6(struct device_node *child)
{
	struct device_node *p;
	phandle parent;

	if (!FUNC3(child))
		return NULL;

	do {
		if (FUNC5(child, "interrupt-parent", &parent)) {
			p = FUNC1(child);
		} else	{
			if (of_irq_workarounds & OF_IMAP_NO_PHANDLE)
				p = FUNC3(of_irq_dflt_pic);
			else
				p = FUNC0(parent);
		}
		FUNC4(child);
		child = p;
	} while (p && FUNC2(p, "#interrupt-cells", NULL) == NULL);

	return p;
}
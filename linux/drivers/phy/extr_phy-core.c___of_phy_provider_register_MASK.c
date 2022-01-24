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
struct phy_provider {struct phy* (* of_xlate ) (struct device*,struct of_phandle_args*) ;int /*<<< orphan*/  list; struct module* owner; void* children; struct device* dev; } ;
struct module {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct phy_provider* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct phy_provider* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC5 (struct device_node*) ; 
 void* FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  phy_provider_list ; 
 int /*<<< orphan*/  phy_provider_mutex ; 

struct phy_provider *FUNC8(struct device *dev,
	struct device_node *children, struct module *owner,
	struct phy * (*of_xlate)(struct device *dev,
				 struct of_phandle_args *args))
{
	struct phy_provider *phy_provider;

	/*
	 * If specified, the device node containing the children must itself
	 * be the provider's device node or a child (or further descendant)
	 * thereof.
	 */
	if (children) {
		struct device_node *parent = FUNC6(children), *next;

		while (parent) {
			if (parent == dev->of_node)
				break;

			next = FUNC5(parent);
			FUNC7(parent);
			parent = next;
		}

		if (!parent)
			return FUNC0(-EINVAL);

		FUNC7(parent);
	} else {
		children = dev->of_node;
	}

	phy_provider = FUNC1(sizeof(*phy_provider), GFP_KERNEL);
	if (!phy_provider)
		return FUNC0(-ENOMEM);

	phy_provider->dev = dev;
	phy_provider->children = FUNC6(children);
	phy_provider->owner = owner;
	phy_provider->of_xlate = of_xlate;

	FUNC3(&phy_provider_mutex);
	FUNC2(&phy_provider->list, &phy_provider_list);
	FUNC4(&phy_provider_mutex);

	return phy_provider;
}
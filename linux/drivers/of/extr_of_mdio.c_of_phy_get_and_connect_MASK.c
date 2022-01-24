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
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
typedef  scalar_t__ phy_interface_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 scalar_t__ FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 struct phy_device* FUNC5 (struct net_device*,struct device_node*,void (*) (struct net_device*),int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct device_node*) ; 
 int FUNC7 (struct device_node*) ; 

struct phy_device *FUNC8(struct net_device *dev,
					  struct device_node *np,
					  void (*hndlr)(struct net_device *))
{
	phy_interface_t iface;
	struct device_node *phy_np;
	struct phy_device *phy;
	int ret;

	iface = FUNC1(np);
	if ((int)iface < 0)
		return NULL;
	if (FUNC6(np)) {
		ret = FUNC7(np);
		if (ret < 0) {
			FUNC0(dev, "broken fixed-link specification\n");
			return NULL;
		}
		phy_np = FUNC2(np);
	} else {
		phy_np = FUNC4(np, "phy-handle", 0);
		if (!phy_np)
			return NULL;
	}

	phy = FUNC5(dev, phy_np, hndlr, 0, iface);

	FUNC3(phy_np);

	return phy;
}
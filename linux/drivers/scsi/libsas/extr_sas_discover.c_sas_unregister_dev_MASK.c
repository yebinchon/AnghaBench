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
struct domain_device {int /*<<< orphan*/  disco_list_node; int /*<<< orphan*/  rphy; int /*<<< orphan*/  state; } ;
struct asd_sas_port {int /*<<< orphan*/  destroy_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAS_DEV_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_sas_port*,struct domain_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct asd_sas_port *port, struct domain_device *dev)
{
	if (!FUNC7(SAS_DEV_DESTROY, &dev->state) &&
	    !FUNC1(&dev->disco_list_node)) {
		/* this rphy never saw sas_rphy_add */
		FUNC0(&dev->disco_list_node);
		FUNC3(dev->rphy);
		FUNC5(port, dev);
		return;
	}

	if (!FUNC6(SAS_DEV_DESTROY, &dev->state)) {
		FUNC4(dev->rphy);
		FUNC2(&dev->disco_list_node, &port->destroy_list);
	}
}
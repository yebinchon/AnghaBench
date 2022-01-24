#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct expander_device {scalar_t__ parent_port; struct ex_phy* ex_phy; } ;
struct ex_phy {int /*<<< orphan*/  phy; } ;
struct domain_device {TYPE_1__* rphy; struct expander_device ex_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC5(struct domain_device *dev, int phy_id)
{
	struct expander_device *ex = &dev->ex_dev;
	struct ex_phy *ex_phy = &ex->ex_phy[phy_id];

	if (!ex->parent_port) {
		ex->parent_port = FUNC3(&dev->rphy->dev, phy_id);
		/* FIXME: error handling */
		FUNC0(!ex->parent_port);
		FUNC0(FUNC1(ex->parent_port));
		FUNC4(ex->parent_port);
	}
	FUNC2(ex->parent_port, ex_phy->phy);
}
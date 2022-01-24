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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct cdns_dphy {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove ) (struct cdns_dphy*) ;} ;

/* Variables and functions */
 struct cdns_dphy* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cdns_dphy*) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct cdns_dphy *dphy = FUNC0(&pdev->dev);

	if (dphy->ops->remove)
		dphy->ops->remove(dphy);

	return 0;
}
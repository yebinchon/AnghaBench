#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct imx_pgc_domain* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct imx_pgc_domain {int /*<<< orphan*/  genpd; TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx_pgc_domain*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct imx_pgc_domain *domain = pdev->dev.platform_data;

	FUNC1(domain->dev->of_node);
	FUNC2(&domain->genpd);
	FUNC0(domain);

	return 0;
}
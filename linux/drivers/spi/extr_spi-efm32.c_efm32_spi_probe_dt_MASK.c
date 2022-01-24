#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct spi_master {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  location; } ;
struct efm32_spi_ddata {TYPE_1__ pdata; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct efm32_spi_ddata*) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct platform_device *pdev,
		struct spi_master *master, struct efm32_spi_ddata *ddata)
{
	struct device_node *np = pdev->dev.of_node;
	u32 location;
	int ret;

	ret = FUNC3(np, "energymicro,location", &location);

	if (ret)
		/* fall back to wrongly namespaced property */
		ret = FUNC3(np, "efm32,location", &location);

	if (ret)
		/* fall back to old and (wrongly) generic property "location" */
		ret = FUNC3(np, "location", &location);

	if (!ret) {
		FUNC0(&pdev->dev, "using location %u\n", location);
	} else {
		/* default to location configured in hardware */
		location = FUNC2(ddata);

		FUNC1(&pdev->dev, "fall back to location %u\n", location);
	}

	ddata->pdata.location = location;
}
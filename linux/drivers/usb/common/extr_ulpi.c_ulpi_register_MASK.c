#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  product; int /*<<< orphan*/  vendor; } ;
struct TYPE_7__ {int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct ulpi {TYPE_1__ id; TYPE_2__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  ulpi_bus ; 
 int /*<<< orphan*/  ulpi_dev_type ; 
 int FUNC6 (struct ulpi*) ; 
 int FUNC7 (struct ulpi*) ; 

__attribute__((used)) static int FUNC8(struct device *dev, struct ulpi *ulpi)
{
	int ret;

	ulpi->dev.parent = dev; /* needed early for ops */
	ulpi->dev.bus = &ulpi_bus;
	ulpi->dev.type = &ulpi_dev_type;
	FUNC4(&ulpi->dev, "%s.ulpi", FUNC3(dev));

	FUNC1(&ulpi->dev, FUNC0(dev));

	ret = FUNC6(ulpi);
	if (ret)
		return ret;

	ret = FUNC7(ulpi);
	if (ret)
		return ret;

	ret = FUNC5(&ulpi->dev);
	if (ret)
		return ret;

	FUNC2(&ulpi->dev, "registered ULPI PHY: vendor %04x, product %04x\n",
		ulpi->id.vendor, ulpi->id.product);

	return 0;
}
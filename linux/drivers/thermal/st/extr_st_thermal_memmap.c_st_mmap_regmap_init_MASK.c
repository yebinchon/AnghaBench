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
struct st_thermal_sensor {int /*<<< orphan*/  regmap; int /*<<< orphan*/  mmio_base; struct device* dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  st_416mpe_regmap_config ; 
 struct platform_device* FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct st_thermal_sensor *sensor)
{
	struct device *dev = sensor->dev;
	struct platform_device *pdev = FUNC6(dev);
	struct resource *res;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	if (!res) {
		FUNC2(dev, "no memory resources defined\n");
		return -ENODEV;
	}

	sensor->mmio_base = FUNC3(dev, res);
	if (FUNC0(sensor->mmio_base)) {
		FUNC2(dev, "failed to remap IO\n");
		return FUNC1(sensor->mmio_base);
	}

	sensor->regmap = FUNC4(dev, sensor->mmio_base,
				&st_416mpe_regmap_config);
	if (FUNC0(sensor->regmap)) {
		FUNC2(dev, "failed to initialise regmap\n");
		return FUNC1(sensor->regmap);
	}

	return 0;
}
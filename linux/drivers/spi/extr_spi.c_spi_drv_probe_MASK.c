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
struct spi_driver {int (* probe ) (struct spi_device*) ;} ;
struct spi_device {int irq; } ;
struct device {scalar_t__ of_node; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int FUNC0 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct spi_device*) ; 
 struct spi_device* FUNC5 (struct device*) ; 
 struct spi_driver* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *dev)
{
	const struct spi_driver		*sdrv = FUNC6(dev->driver);
	struct spi_device		*spi = FUNC5(dev);
	int ret;

	ret = FUNC2(dev->of_node, false);
	if (ret)
		return ret;

	if (dev->of_node) {
		spi->irq = FUNC3(dev->of_node, 0);
		if (spi->irq == -EPROBE_DEFER)
			return -EPROBE_DEFER;
		if (spi->irq < 0)
			spi->irq = 0;
	}

	ret = FUNC0(dev, true);
	if (ret)
		return ret;

	ret = sdrv->probe(spi);
	if (ret)
		FUNC1(dev, true);

	return ret;
}
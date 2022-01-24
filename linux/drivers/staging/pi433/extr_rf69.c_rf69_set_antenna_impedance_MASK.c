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
struct spi_device {int /*<<< orphan*/  dev; } ;
typedef  enum antenna_impedance { ____Placeholder_antenna_impedance } antenna_impedance ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MASK_LNA_ZIN ; 
 int /*<<< orphan*/  REG_LNA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
#define  fifty_ohm 129 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct spi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  two_hundred_ohm 128 

int FUNC3(struct spi_device *spi,
			       enum antenna_impedance antenna_impedance)
{
	switch (antenna_impedance) {
	case fifty_ohm:
		return FUNC1(spi, REG_LNA, MASK_LNA_ZIN);
	case two_hundred_ohm:
		return FUNC2(spi, REG_LNA, MASK_LNA_ZIN);
	default:
		FUNC0(&spi->dev, "set: illegal input param");
		return -EINVAL;
	}
}
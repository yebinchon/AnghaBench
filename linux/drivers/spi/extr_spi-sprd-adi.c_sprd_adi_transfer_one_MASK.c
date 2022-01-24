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
typedef  scalar_t__ u32 ;
struct sprd_adi {int /*<<< orphan*/  dev; scalar_t__ slave_pbase; } ;
struct spi_transfer {scalar_t__ tx_buf; scalar_t__ rx_buf; } ;
struct spi_device {int dummy; } ;
struct spi_controller {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sprd_adi* FUNC1 (struct spi_controller*) ; 
 int FUNC2 (struct sprd_adi*,scalar_t__) ; 
 int FUNC3 (struct sprd_adi*,scalar_t__,scalar_t__*) ; 
 int FUNC4 (struct sprd_adi*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct spi_controller *ctlr,
				 struct spi_device *spi_dev,
				 struct spi_transfer *t)
{
	struct sprd_adi *sadi = FUNC1(ctlr);
	u32 phy_reg, val;
	int ret;

	if (t->rx_buf) {
		phy_reg = *(u32 *)t->rx_buf + sadi->slave_pbase;

		ret = FUNC2(sadi, phy_reg);
		if (ret)
			return ret;

		ret = FUNC3(sadi, phy_reg, &val);
		if (ret)
			return ret;

		*(u32 *)t->rx_buf = val;
	} else if (t->tx_buf) {
		u32 *p = (u32 *)t->tx_buf;

		/*
		 * Get the physical register address need to write and convert
		 * the physical address to virtual address. Since we need
		 * virtual register address to write.
		 */
		phy_reg = *p++ + sadi->slave_pbase;
		ret = FUNC2(sadi, phy_reg);
		if (ret)
			return ret;

		val = *p;
		ret = FUNC4(sadi, phy_reg, val);
		if (ret)
			return ret;
	} else {
		FUNC0(sadi->dev, "no buffer for transfer\n");
		return -EINVAL;
	}

	return 0;
}
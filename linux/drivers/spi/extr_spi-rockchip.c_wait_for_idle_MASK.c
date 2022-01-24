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
struct rockchip_spi {int /*<<< orphan*/  dev; scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ ROCKCHIP_SPI_SR ; 
 int SR_BUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline void FUNC4(struct rockchip_spi *rs)
{
	unsigned long timeout = jiffies + FUNC1(5);

	do {
		if (!(FUNC2(rs->regs + ROCKCHIP_SPI_SR) & SR_BUSY))
			return;
	} while (!FUNC3(jiffies, timeout));

	FUNC0(rs->dev, "spi controller is in busy state!\n");
}
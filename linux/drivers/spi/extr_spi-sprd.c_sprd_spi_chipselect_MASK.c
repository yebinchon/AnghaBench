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
typedef  int /*<<< orphan*/  u32 ;
struct sprd_spi {scalar_t__ base; } ;
struct spi_device {struct spi_controller* controller; } ;
struct spi_controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SPRD_SPI_CS0_VALID ; 
 int /*<<< orphan*/  SPRD_SPI_CSN_MASK ; 
 scalar_t__ SPRD_SPI_CTL0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct sprd_spi* FUNC1 (struct spi_controller*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct spi_device *sdev, bool cs)
{
	struct spi_controller *sctlr = sdev->controller;
	struct sprd_spi *ss = FUNC1(sctlr);
	u32 val;

	val = FUNC0(ss->base + SPRD_SPI_CTL0);
	/*  The SPI controller will pull down CS pin if cs is 0 */
	if (!cs) {
		val &= ~SPRD_SPI_CS0_VALID;
		FUNC2(val, ss->base + SPRD_SPI_CTL0);
	} else {
		val |= SPRD_SPI_CSN_MASK;
		FUNC2(val, ss->base + SPRD_SPI_CTL0);
	}
}
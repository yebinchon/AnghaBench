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
typedef  int u8 ;
struct spi_master {int dummy; } ;
struct bcm63xx_spi {int /*<<< orphan*/  done; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SPI_INTR_CLEAR_ALL ; 
 int SPI_INTR_CMD_DONE ; 
 int /*<<< orphan*/  SPI_INT_MASK ; 
 int /*<<< orphan*/  SPI_INT_STATUS ; 
 int FUNC0 (struct bcm63xx_spi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm63xx_spi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct bcm63xx_spi* FUNC3 (struct spi_master*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct spi_master *master = (struct spi_master *)dev_id;
	struct bcm63xx_spi *bs = FUNC3(master);
	u8 intr;

	/* Read interupts and clear them immediately */
	intr = FUNC0(bs, SPI_INT_STATUS);
	FUNC1(bs, SPI_INTR_CLEAR_ALL, SPI_INT_STATUS);
	FUNC1(bs, 0, SPI_INT_MASK);

	/* A transfer completed */
	if (intr & SPI_INTR_CMD_DONE)
		FUNC2(&bs->done);

	return IRQ_HANDLED;
}
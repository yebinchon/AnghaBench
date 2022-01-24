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
typedef  int u32 ;
struct sprd_spi {scalar_t__ base; int /*<<< orphan*/  dev; } ;
struct spi_transfer {int dummy; } ;

/* Variables and functions */
 scalar_t__ SPRD_SPI_INT_CLR ; 
 scalar_t__ SPRD_SPI_INT_RAW_STS ; 
 scalar_t__ SPRD_SPI_STS2 ; 
 int SPRD_SPI_TX_BUSY ; 
 int /*<<< orphan*/  SPRD_SPI_TX_END_INT_CLR ; 
 int SPRD_SPI_TX_END_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct sprd_spi*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct sprd_spi *ss, struct spi_transfer *t)
{
	u32 val, us;
	int ret;

	us = FUNC2(ss, t);
	ret = FUNC1(ss->base + SPRD_SPI_INT_RAW_STS, val,
					 val & SPRD_SPI_TX_END_IRQ, 0, us);
	if (ret) {
		FUNC0(ss->dev, "SPI error, spi send timeout!\n");
		return ret;
	}

	ret = FUNC1(ss->base + SPRD_SPI_STS2, val,
					 !(val & SPRD_SPI_TX_BUSY), 0, us);
	if (ret) {
		FUNC0(ss->dev, "SPI error, spi busy timeout!\n");
		return ret;
	}

	FUNC3(SPRD_SPI_TX_END_INT_CLR, ss->base + SPRD_SPI_INT_CLR);

	return 0;
}
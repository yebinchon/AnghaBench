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
struct sprd_spi {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ SPRD_SPI_INT_CLR ; 
 scalar_t__ SPRD_SPI_INT_EN ; 
 int SPRD_SPI_RX_END_CLR ; 
 int SPRD_SPI_RX_END_INT_EN ; 
 int SPRD_SPI_TX_END_CLR ; 
 int SPRD_SPI_TX_END_INT_EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct sprd_spi *ss)
{
	u32 val;

	/* Clear interrupt status before enabling interrupt. */
	FUNC1(SPRD_SPI_TX_END_CLR | SPRD_SPI_RX_END_CLR,
		ss->base + SPRD_SPI_INT_CLR);
	/* Enable SPI interrupt only in DMA mode. */
	val = FUNC0(ss->base + SPRD_SPI_INT_EN);
	FUNC1(val | SPRD_SPI_TX_END_INT_EN |
		       SPRD_SPI_RX_END_INT_EN,
		       ss->base + SPRD_SPI_INT_EN);
}
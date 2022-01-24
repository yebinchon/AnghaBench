#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__* dma_chan; } ;
struct sprd_spi {TYPE_1__ dma; } ;

/* Variables and functions */
 size_t SPRD_SPI_RX ; 
 size_t SPRD_SPI_TX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct sprd_spi *ss)
{
	if (ss->dma.dma_chan[SPRD_SPI_RX])
		FUNC0(ss->dma.dma_chan[SPRD_SPI_RX]);

	if (ss->dma.dma_chan[SPRD_SPI_TX])
		FUNC0(ss->dma.dma_chan[SPRD_SPI_TX]);
}
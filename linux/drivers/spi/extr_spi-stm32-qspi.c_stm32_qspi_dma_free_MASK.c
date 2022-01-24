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
struct stm32_qspi {scalar_t__ dma_chrx; scalar_t__ dma_chtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct stm32_qspi *qspi)
{
	if (qspi->dma_chtx)
		FUNC0(qspi->dma_chtx);
	if (qspi->dma_chrx)
		FUNC0(qspi->dma_chrx);
}
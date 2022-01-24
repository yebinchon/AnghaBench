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
struct pic32_spi {TYPE_1__* master; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {scalar_t__ dma_tx; scalar_t__ dma_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIC32F_DMA_PREP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pic32_spi *pic32s)
{
	if (!FUNC2(PIC32F_DMA_PREP, &pic32s->flags))
		return;

	FUNC0(PIC32F_DMA_PREP, &pic32s->flags);
	if (pic32s->master->dma_rx)
		FUNC1(pic32s->master->dma_rx);

	if (pic32s->master->dma_tx)
		FUNC1(pic32s->master->dma_tx);
}
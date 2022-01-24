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
struct kpc_dma_device {int /*<<< orphan*/  desc_pool_first; int /*<<< orphan*/  desc_pool_last; int /*<<< orphan*/  desc_completed; int /*<<< orphan*/  desc_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kpc_dma_device*) ; 
 int ENG_CTL_DMA_ENABLE ; 
 int ENG_CTL_IRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct kpc_dma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kpc_dma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kpc_dma_device*,int) ; 

void  FUNC4(struct kpc_dma_device *eng)
{
	eng->desc_next       = eng->desc_pool_first;
	eng->desc_completed  = eng->desc_pool_last;

	// Setup the engine pointer registers
	FUNC1(eng, eng->desc_pool_first);
	FUNC2(eng, eng->desc_pool_first);
	FUNC0(eng);

	FUNC3(eng, ENG_CTL_DMA_ENABLE | ENG_CTL_IRQ_ENABLE);
}
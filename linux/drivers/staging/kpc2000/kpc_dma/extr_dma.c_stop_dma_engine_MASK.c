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
struct kpc_dma_device {TYPE_1__* pldev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENG_CTL_DESC_ALIGN_ERR ; 
 int ENG_CTL_DESC_CHAIN_END ; 
 int ENG_CTL_DESC_COMPLETE ; 
 int ENG_CTL_DESC_FETCH_ERR ; 
 int ENG_CTL_DMA_RESET ; 
 int ENG_CTL_DMA_RESET_REQUEST ; 
 int ENG_CTL_DMA_RUNNING ; 
 int ENG_CTL_DMA_WAITING_PERSIST ; 
 int ENG_CTL_IRQ_ACTIVE ; 
 int ENG_CTL_SW_ABORT_ERR ; 
 int FUNC0 (struct kpc_dma_device*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (struct kpc_dma_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kpc_dma_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int jiffies ; 
 scalar_t__ FUNC4 (int,unsigned long) ; 

void  FUNC5(struct kpc_dma_device *eng)
{
	unsigned long timeout;

	// Disable the descriptor engine
	FUNC2(eng, 0);

	// Wait for descriptor engine to finish current operaion
	timeout = jiffies + (HZ / 2);
	while (FUNC0(eng) & ENG_CTL_DMA_RUNNING) {
		if (FUNC4(jiffies, timeout)) {
			FUNC3(&eng->pldev->dev, "DMA_RUNNING still asserted!\n");
			break;
		}
	}

	// Request a reset
	FUNC2(eng, ENG_CTL_DMA_RESET_REQUEST);

	// Wait for reset request to be processed
	timeout = jiffies + (HZ / 2);
	while (FUNC0(eng) & (ENG_CTL_DMA_RUNNING | ENG_CTL_DMA_RESET_REQUEST)) {
		if (FUNC4(jiffies, timeout)) {
			FUNC3(&eng->pldev->dev, "ENG_CTL_DMA_RESET_REQUEST still asserted!\n");
			break;
		}
	}

	// Request a reset
	FUNC2(eng, ENG_CTL_DMA_RESET);

	// And wait for reset to complete
	timeout = jiffies + (HZ / 2);
	while (FUNC0(eng) & ENG_CTL_DMA_RESET) {
		if (FUNC4(jiffies, timeout)) {
			FUNC3(&eng->pldev->dev, "DMA_RESET still asserted!\n");
			break;
		}
	}

	// Clear any persistent bits just to make sure there is no residue from the reset
	FUNC1(eng, (ENG_CTL_IRQ_ACTIVE | ENG_CTL_DESC_COMPLETE | ENG_CTL_DESC_ALIGN_ERR | ENG_CTL_DESC_FETCH_ERR | ENG_CTL_SW_ABORT_ERR | ENG_CTL_DESC_CHAIN_END | ENG_CTL_DMA_WAITING_PERSIST), 0);

	// Reset performance counters

	// Completely disable the engine
	FUNC2(eng, 0);
}
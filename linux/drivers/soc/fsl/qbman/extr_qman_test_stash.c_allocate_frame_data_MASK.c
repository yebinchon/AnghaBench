#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HP_FIRST_WORD ; 
 int HP_NUM_WORDS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __frame_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frame_dma ; 
 int /*<<< orphan*/ * frame_ptr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* pcfg ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  qman_dma_portal ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void)
{
	u32 lfsr = HP_FIRST_WORD;
	int loop;

	if (!qman_dma_portal) {
		FUNC6("portal not available\n");
		return -EIO;
	}

	pcfg = FUNC7(qman_dma_portal);

	__frame_ptr = FUNC5(4 * HP_NUM_WORDS, GFP_KERNEL);
	if (!__frame_ptr)
		return -ENOMEM;

	frame_ptr = FUNC0(__frame_ptr, 64);
	for (loop = 0; loop < HP_NUM_WORDS; loop++) {
		frame_ptr[loop] = lfsr;
		lfsr = FUNC3(lfsr);
	}

	frame_dma = FUNC1(pcfg->dev, frame_ptr, 4 * HP_NUM_WORDS,
				   DMA_BIDIRECTIONAL);
	if (FUNC2(pcfg->dev, frame_dma)) {
		FUNC6("dma mapping failure\n");
		FUNC4(__frame_ptr);
		return -EIO;
	}

	return 0;
}
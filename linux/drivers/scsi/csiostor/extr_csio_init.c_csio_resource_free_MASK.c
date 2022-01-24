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
struct csio_hw {int /*<<< orphan*/ * mb_mempool; int /*<<< orphan*/ * rnode_mempool; int /*<<< orphan*/ * scsi_dma_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct csio_hw *hw)
{
	FUNC0(hw->scsi_dma_pool);
	hw->scsi_dma_pool = NULL;
	FUNC1(hw->rnode_mempool);
	hw->rnode_mempool = NULL;
	FUNC1(hw->mb_mempool);
	hw->mb_mempool = NULL;
}
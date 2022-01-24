#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dma_type; int /*<<< orphan*/  list; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ scb_t ;
struct TYPE_6__ {int /*<<< orphan*/  free_list; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
#define  MEGA_DMA_TYPE_NONE 129 
#define  MEGA_SGLIST 128 
 int /*<<< orphan*/  SCB_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(adapter_t *adapter, scb_t *scb)
{
	switch( scb->dma_type ) {

	case MEGA_DMA_TYPE_NONE:
		break;

	case MEGA_SGLIST:
		FUNC2(scb->cmd);
		break;
	default:
		break;
	}

	/*
	 * Remove from the pending list
	 */
	FUNC1(&scb->list);

	/* Link the scb back into free list */
	scb->state = SCB_FREE;
	scb->cmd = NULL;

	FUNC0(&scb->list, &adapter->free_list);
}
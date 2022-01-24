#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int idx; int /*<<< orphan*/  list; int /*<<< orphan*/ * cmd; int /*<<< orphan*/  state; int /*<<< orphan*/  dma_type; int /*<<< orphan*/ * epthru; int /*<<< orphan*/  epthru_dma_addr; int /*<<< orphan*/ * pthru; int /*<<< orphan*/  pthru_dma_addr; int /*<<< orphan*/ * sgl; int /*<<< orphan*/ * sgl64; int /*<<< orphan*/  sgl_dma_addr; } ;
typedef  TYPE_1__ scb_t ;
typedef  int /*<<< orphan*/  mega_sglist ;
typedef  int /*<<< orphan*/  mega_sgl64 ;
typedef  int /*<<< orphan*/  mega_passthru ;
typedef  int /*<<< orphan*/  mega_ext_passthru ;
struct TYPE_7__ {int max_cmds; int sglen; int /*<<< orphan*/  free_list; TYPE_3__* dev; TYPE_1__* scb_list; } ;
typedef  TYPE_2__ adapter_t ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEGA_DMA_TYPE_NONE ; 
 int /*<<< orphan*/  SCB_FREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 void* FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(adapter_t *adapter)
{
	scb_t	*scb;
	int	i;

	for( i = 0; i < adapter->max_cmds; i++ ) {

		scb = &adapter->scb_list[i];

		scb->sgl64 = NULL;
		scb->sgl = NULL;
		scb->pthru = NULL;
		scb->epthru = NULL;
	}

	for( i = 0; i < adapter->max_cmds; i++ ) {

		scb = &adapter->scb_list[i];

		scb->idx = i;

		scb->sgl64 = FUNC3(adapter->dev,
				sizeof(mega_sgl64) * adapter->sglen,
				&scb->sgl_dma_addr);

		scb->sgl = (mega_sglist *)scb->sgl64;

		if( !scb->sgl ) {
			FUNC0(&adapter->dev->dev, "RAID: Can't allocate sglist\n");
			FUNC2(adapter);
			return -1;
		}

		scb->pthru = FUNC3(adapter->dev,
				sizeof(mega_passthru),
				&scb->pthru_dma_addr);

		if( !scb->pthru ) {
			FUNC0(&adapter->dev->dev, "RAID: Can't allocate passthru\n");
			FUNC2(adapter);
			return -1;
		}

		scb->epthru = FUNC3(adapter->dev,
				sizeof(mega_ext_passthru),
				&scb->epthru_dma_addr);

		if( !scb->epthru ) {
			FUNC0(&adapter->dev->dev,
				"Can't allocate extended passthru\n");
			FUNC2(adapter);
			return -1;
		}


		scb->dma_type = MEGA_DMA_TYPE_NONE;

		/*
		 * Link to free list
		 * lock not required since we are loading the driver, so no
		 * commands possible right now.
		 */
		scb->state = SCB_FREE;
		scb->cmd = NULL;
		FUNC1(&scb->list, &adapter->free_list);
	}

	return 0;
}
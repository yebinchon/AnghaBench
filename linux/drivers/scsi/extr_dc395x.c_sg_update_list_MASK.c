#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct ScsiReqBlk {scalar_t__ total_xfer_length; int sg_index; scalar_t__ sg_count; int /*<<< orphan*/  sg_bus_addr; TYPE_3__* dcb; struct SGentry* segment_x; } ;
struct SGentry {scalar_t__ length; int /*<<< orphan*/  address; } ;
struct TYPE_6__ {TYPE_2__* acb; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_0 ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SEGMENTX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ScsiReqBlk*) ; 

__attribute__((used)) static void FUNC4(struct ScsiReqBlk *srb, u32 left)
{
	u8 idx;
	u32 xferred = srb->total_xfer_length - left; /* bytes transferred */
	struct SGentry *psge = srb->segment_x + srb->sg_index;

	FUNC2(DBG_0,
		"sg_update_list: Transferred %i of %i bytes, %i remain\n",
		xferred, srb->total_xfer_length, left);
	if (xferred == 0) {
		/* nothing to update since we did not transfer any data */
		return;
	}

	FUNC3(srb);
	srb->total_xfer_length = left;	/* update remaining count */
	for (idx = srb->sg_index; idx < srb->sg_count; idx++) {
		if (xferred >= psge->length) {
			/* Complete SG entries done */
			xferred -= psge->length;
		} else {
			/* Partial SG entry done */
			FUNC0(&srb->dcb->acb->dev->dev,
					srb->sg_bus_addr, SEGMENTX_LEN,
					DMA_TO_DEVICE);
			psge->length -= xferred;
			psge->address += xferred;
			srb->sg_index = idx;
			FUNC1(&srb->dcb->acb->dev->dev,
					srb->sg_bus_addr, SEGMENTX_LEN,
					DMA_TO_DEVICE);
			break;
		}
		psge++;
	}
	FUNC3(srb);
}
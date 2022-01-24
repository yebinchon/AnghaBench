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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct fw_scsi_abrt_cls_wr {int dummy; } ;
struct csio_wr_pair {scalar_t__ size1; void* addr1; void* addr2; } ;
struct csio_ioreq {int /*<<< orphan*/  eq_idx; int /*<<< orphan*/  drv_status; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
struct TYPE_2__ {struct csio_hw* hwp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csio_ioreq*,void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_hw*,int /*<<< orphan*/ ,scalar_t__,struct csio_wr_pair*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC5(struct csio_ioreq *req, bool abort)
{
	struct csio_wr_pair wrp;
	struct csio_hw *hw = req->lnode->hwp;
	uint32_t size = FUNC0(sizeof(struct fw_scsi_abrt_cls_wr), 16);

	req->drv_status = FUNC3(hw, req->eq_idx, size, &wrp);
	if (req->drv_status != 0)
		return;

	if (wrp.size1 >= size) {
		/* Initialize WR in one shot */
		FUNC2(req, wrp.addr1, size, abort);
	} else {
		uint8_t *tmpwr = FUNC1(hw, req->eq_idx);
		/*
		 * Make a temporary copy of the WR and write back
		 * the copy into the WR pair.
		 */
		FUNC2(req, (void *)tmpwr, size, abort);
		FUNC4(wrp.addr1, tmpwr, wrp.size1);
		FUNC4(wrp.addr2, tmpwr + wrp.size1, size - wrp.size1);
	}
}
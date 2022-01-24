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
struct csio_wr_pair {scalar_t__ size1; void* addr1; void* addr2; } ;
struct csio_scsim {int /*<<< orphan*/  proto_cmd_len; } ;
struct csio_ioreq {int /*<<< orphan*/  eq_idx; int /*<<< orphan*/  drv_status; TYPE_1__* lnode; } ;
struct csio_hw {int dummy; } ;
struct TYPE_2__ {struct csio_hw* hwp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct csio_scsim* FUNC1 (struct csio_hw*) ; 
 int /*<<< orphan*/ * FUNC2 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct csio_ioreq*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_hw*,int /*<<< orphan*/ ,scalar_t__,struct csio_wr_pair*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static inline void
FUNC7(struct csio_ioreq *req)
{
	struct csio_wr_pair wrp;
	struct csio_hw *hw = req->lnode->hwp;
	struct csio_scsim *scsim = FUNC1(hw);
	uint32_t size = FUNC0(scsim->proto_cmd_len);

	req->drv_status = FUNC4(hw, req->eq_idx, size, &wrp);
	if (FUNC6(req->drv_status != 0))
		return;

	if (wrp.size1 >= size) {
		/* Initialize WR in one shot */
		FUNC3(req, wrp.addr1, size);
	} else {
		uint8_t *tmpwr = FUNC2(hw, req->eq_idx);

		/*
		 * Make a temporary copy of the WR and write back
		 * the copy into the WR pair.
		 */
		FUNC3(req, (void *)tmpwr, size);
		FUNC5(wrp.addr1, tmpwr, wrp.size1);
		FUNC5(wrp.addr2, tmpwr + wrp.size1, size - wrp.size1);
	}
}
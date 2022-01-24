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
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct csio_ioreq*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct csio_scsim* FUNC2 (struct csio_hw*) ; 
 int /*<<< orphan*/ * FUNC3 (struct csio_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct csio_ioreq*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct csio_hw*,int /*<<< orphan*/ ,scalar_t__,struct csio_wr_pair*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  read ; 

__attribute__((used)) static inline void
FUNC8(struct csio_ioreq *req)
{
	struct csio_wr_pair wrp;
	uint32_t size;
	struct csio_hw *hw = req->lnode->hwp;
	struct csio_scsim *scsim = FUNC2(hw);

	FUNC1(req, read, size, scsim->proto_cmd_len);
	size = FUNC0(size, 16);

	req->drv_status = FUNC5(hw, req->eq_idx, size, &wrp);
	if (FUNC6(req->drv_status == 0)) {
		if (FUNC6(wrp.size1 >= size)) {
			/* Initialize WR in one shot */
			FUNC4(req, wrp.addr1, size);
		} else {
			uint8_t *tmpwr = FUNC3(hw, req->eq_idx);
			/*
			 * Make a temporary copy of the WR and write back
			 * the copy into the WR pair.
			 */
			FUNC4(req, (void *)tmpwr, size);
			FUNC7(wrp.addr1, tmpwr, wrp.size1);
			FUNC7(wrp.addr2, tmpwr + wrp.size1, size - wrp.size1);
		}
	}
}
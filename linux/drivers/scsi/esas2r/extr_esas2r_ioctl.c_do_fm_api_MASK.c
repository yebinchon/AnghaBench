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
struct esas2r_flash_img {void* status; } ;
typedef  struct esas2r_flash_img u8 ;
struct esas2r_request {int /*<<< orphan*/  comp_cb; } ;
struct TYPE_5__ {scalar_t__ header_buff_phys; struct esas2r_flash_img* header_buff; struct esas2r_flash_img header; } ;
struct TYPE_6__ {struct esas2r_flash_img* cur_offset; void* get_phys_addr; } ;
struct esas2r_adapter {int /*<<< orphan*/  fm_api_mutex; TYPE_2__ firmware; TYPE_1__* pcid; scalar_t__ fm_api_command_done; int /*<<< orphan*/  fm_api_waiter; TYPE_3__ fm_api_sgc; struct esas2r_flash_img* save_offset; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
typedef  void* PGETPHYSADDR ;

/* Variables and functions */
 void* FI_STAT_BUSY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  complete_fm_api_req ; 
 struct esas2r_flash_img* FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,struct esas2r_flash_img*,int /*<<< orphan*/ ) ; 
 struct esas2r_request* FUNC2 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct esas2r_adapter*,struct esas2r_flash_img*,struct esas2r_request*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct esas2r_adapter*,struct esas2r_request*) ; 
 scalar_t__ get_physaddr_fm_api ; 
 scalar_t__ get_physaddr_fm_api_header ; 
 int /*<<< orphan*/  FUNC6 (struct esas2r_flash_img*,struct esas2r_flash_img*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct esas2r_adapter *a, struct esas2r_flash_img *fi)
{
	struct esas2r_request *rq;

	if (FUNC7(&a->fm_api_mutex)) {
		fi->status = FI_STAT_BUSY;
		return;
	}

	rq = FUNC2(a);
	if (rq == NULL) {
		fi->status = FI_STAT_BUSY;
		goto free_sem;
	}

	if (fi == &a->firmware.header) {
		a->firmware.header_buff = FUNC0(&a->pcid->dev,
							     (size_t)sizeof(
								     struct
								     esas2r_flash_img),
							     (dma_addr_t *)&a->
							     firmware.
							     header_buff_phys,
							     GFP_KERNEL);

		if (a->firmware.header_buff == NULL) {
			FUNC3("failed to allocate header buffer!");
			fi->status = FI_STAT_BUSY;
			goto free_req;
		}

		FUNC6(a->firmware.header_buff, fi,
		       sizeof(struct esas2r_flash_img));
		a->save_offset = a->firmware.header_buff;
		a->fm_api_sgc.get_phys_addr =
			(PGETPHYSADDR)get_physaddr_fm_api_header;
	} else {
		a->save_offset = (u8 *)fi;
		a->fm_api_sgc.get_phys_addr =
			(PGETPHYSADDR)get_physaddr_fm_api;
	}

	rq->comp_cb = complete_fm_api_req;
	a->fm_api_command_done = 0;
	a->fm_api_sgc.cur_offset = a->save_offset;

	if (!FUNC4(a, (struct esas2r_flash_img *)a->save_offset, rq,
			   &a->fm_api_sgc))
		goto all_done;

	/* Now wait around for it to complete. */
	while (!a->fm_api_command_done)
		FUNC9(a->fm_api_waiter,
					 a->fm_api_command_done);
all_done:
	if (fi == &a->firmware.header) {
		FUNC6(fi, a->firmware.header_buff,
		       sizeof(struct esas2r_flash_img));

		FUNC1(&a->pcid->dev,
				  (size_t)sizeof(struct esas2r_flash_img),
				  a->firmware.header_buff,
				  (dma_addr_t)a->firmware.header_buff_phys);
	}
free_req:
	FUNC5(a, (struct esas2r_request *)rq);
free_sem:
	FUNC8(&a->fm_api_mutex);
	return;

}
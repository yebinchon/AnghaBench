#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct esas2r_request {TYPE_2__* vrq; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_vda_cfg_req {int /*<<< orphan*/  data; int /*<<< orphan*/  length; int /*<<< orphan*/  sub_func; } ;
struct TYPE_3__ {int /*<<< orphan*/  function; } ;
struct TYPE_4__ {TYPE_1__ scsi; struct atto_vda_cfg_req cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  VDA_FUNC_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 

void FUNC4(struct esas2r_adapter *a,
			  struct esas2r_request *rq,
			  u8 sub_func,
			  u32 length,
			  void *data)
{
	struct atto_vda_cfg_req *vrq = &rq->vrq->cfg;

	FUNC0(rq);

	rq->vrq->scsi.function = VDA_FUNC_CFG;

	vrq->sub_func = sub_func;
	vrq->length = FUNC1(length);

	if (data) {
		FUNC2(sub_func, data);

		FUNC3(&vrq->data, data, length);
	}
}
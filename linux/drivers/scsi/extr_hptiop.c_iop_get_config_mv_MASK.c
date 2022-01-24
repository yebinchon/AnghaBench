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
struct TYPE_5__ {struct hpt_iop_request_get_config* internal_req; } ;
struct TYPE_6__ {TYPE_2__ mv; } ;
struct hptiop_hba {TYPE_3__ u; } ;
struct TYPE_4__ {scalar_t__ context_hi32; void* context; void* result; void* size; void* type; void* flags; } ;
struct hpt_iop_request_get_config {TYPE_1__ header; } ;

/* Variables and functions */
 int IOP_REQUEST_FLAG_OUTPUT_CONTEXT ; 
 int IOP_REQUEST_TYPE_GET_CONFIG ; 
 int IOP_RESULT_PENDING ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct hptiop_hba*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hpt_iop_request_get_config*,struct hpt_iop_request_get_config*,int) ; 

__attribute__((used)) static int FUNC4(struct hptiop_hba *hba,
				struct hpt_iop_request_get_config *config)
{
	struct hpt_iop_request_get_config *req = hba->u.mv.internal_req;

	req->header.flags = FUNC0(IOP_REQUEST_FLAG_OUTPUT_CONTEXT);
	req->header.type = FUNC0(IOP_REQUEST_TYPE_GET_CONFIG);
	req->header.size =
		FUNC0(sizeof(struct hpt_iop_request_get_config));
	req->header.result = FUNC0(IOP_RESULT_PENDING);
	req->header.context = FUNC0(IOP_REQUEST_TYPE_GET_CONFIG<<5);
	req->header.context_hi32 = 0;

	if (FUNC2(hba, 0, 20000)) {
		FUNC1("Get config send cmd failed\n");
		return -1;
	}

	FUNC3(config, req, sizeof(struct hpt_iop_request_get_config));
	return 0;
}
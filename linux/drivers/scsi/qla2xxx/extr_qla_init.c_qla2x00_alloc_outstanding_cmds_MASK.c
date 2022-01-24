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
struct req_que {scalar_t__ num_outstanding_cmds; void* outstanding_cmds; } ;
struct qla_hw_data {scalar_t__ cur_fw_xcb_count; scalar_t__ cur_fw_iocb_count; } ;
typedef  int /*<<< orphan*/  srb_t ;

/* Variables and functions */
 scalar_t__ DEFAULT_OUTSTANDING_COMMANDS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qla_hw_data*) ; 
 scalar_t__ MIN_OUTSTANDING_COMMANDS ; 
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 void* FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,struct req_que*) ; 
 int /*<<< orphan*/  ql_log_fatal ; 

int
FUNC3(struct qla_hw_data *ha, struct req_que *req)
{
	/* Don't try to reallocate the array */
	if (req->outstanding_cmds)
		return QLA_SUCCESS;

	if (!FUNC0(ha))
		req->num_outstanding_cmds = DEFAULT_OUTSTANDING_COMMANDS;
	else {
		if (ha->cur_fw_xcb_count <= ha->cur_fw_iocb_count)
			req->num_outstanding_cmds = ha->cur_fw_xcb_count;
		else
			req->num_outstanding_cmds = ha->cur_fw_iocb_count;
	}

	req->outstanding_cmds = FUNC1(req->num_outstanding_cmds,
					sizeof(srb_t *),
					GFP_KERNEL);

	if (!req->outstanding_cmds) {
		/*
		 * Try to allocate a minimal size just so we can get through
		 * initialization.
		 */
		req->num_outstanding_cmds = MIN_OUTSTANDING_COMMANDS;
		req->outstanding_cmds = FUNC1(req->num_outstanding_cmds,
						sizeof(srb_t *),
						GFP_KERNEL);

		if (!req->outstanding_cmds) {
			FUNC2(ql_log_fatal, NULL, 0x0126,
			    "Failed to allocate memory for "
			    "outstanding_cmds for req_que %p.\n", req);
			req->num_outstanding_cmds = 0;
			return QLA_FUNCTION_FAILED;
		}
	}

	return QLA_SUCCESS;
}
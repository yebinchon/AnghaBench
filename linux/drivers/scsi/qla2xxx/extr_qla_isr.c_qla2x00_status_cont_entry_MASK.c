#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_11__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ sts_cont_entry_t ;
struct scsi_qla_host {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  result; } ;
struct rsp_que {TYPE_2__* status_srb; struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  pdev; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* done ) (TYPE_2__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ srb_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int* FUNC1 (TYPE_2__*) ; 
 struct scsi_cmnd* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (struct qla_hw_data*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 struct scsi_qla_host* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ ql_dbg_buffer ; 
 scalar_t__ ql_dbg_io ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct scsi_qla_host*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct scsi_qla_host*,int,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  ql_log_warn ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct rsp_que *rsp, sts_cont_entry_t *pkt)
{
	uint8_t	sense_sz = 0;
	struct qla_hw_data *ha = rsp->hw;
	struct scsi_qla_host *vha = FUNC8(ha->pdev);
	srb_t *sp = rsp->status_srb;
	struct scsi_cmnd *cp;
	uint32_t sense_len;
	uint8_t *sense_ptr;

	if (!sp || !FUNC0(sp))
		return;

	sense_len = FUNC0(sp);
	sense_ptr = FUNC1(sp);

	cp = FUNC2(sp);
	if (cp == NULL) {
		FUNC10(ql_log_warn, vha, 0x3025,
		    "cmd is NULL: already returned to OS (sp=%p).\n", sp);

		rsp->status_srb = NULL;
		return;
	}

	if (sense_len > sizeof(pkt->data))
		sense_sz = sizeof(pkt->data);
	else
		sense_sz = sense_len;

	/* Move sense data. */
	if (FUNC3(ha))
		FUNC6(pkt->data, sizeof(pkt->data));
	FUNC7(sense_ptr, pkt->data, sense_sz);
	FUNC9(ql_dbg_io + ql_dbg_buffer, vha, 0x302c,
		sense_ptr, sense_sz);

	sense_len -= sense_sz;
	sense_ptr += sense_sz;

	FUNC5(sp, sense_ptr);
	FUNC4(sp, sense_len);

	/* Place command on done queue. */
	if (sense_len == 0) {
		rsp->status_srb = NULL;
		sp->done(sp, cp->result);
	}
}
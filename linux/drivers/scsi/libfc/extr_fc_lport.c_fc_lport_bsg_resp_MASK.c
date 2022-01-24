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
typedef  int /*<<< orphan*/  uint32_t ;
struct fc_seq {int dummy; } ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame_header {int /*<<< orphan*/  fh_f_ctl; int /*<<< orphan*/  fh_seq_cnt; } ;
struct fc_frame {int dummy; } ;
struct fc_ct_hdr {int /*<<< orphan*/  ct_cmd; } ;
struct TYPE_4__ {int /*<<< orphan*/  status; } ;
struct TYPE_5__ {TYPE_1__ ctels_reply; } ;
struct fc_bsg_reply {scalar_t__ reply_payload_rcv_len; scalar_t__ result; TYPE_2__ reply_data; } ;
struct fc_bsg_info {unsigned short rsp_code; int /*<<< orphan*/  offset; int /*<<< orphan*/  nents; int /*<<< orphan*/  sg; struct fc_lport* lport; struct bsg_job* job; } ;
struct TYPE_6__ {scalar_t__ payload_len; } ;
struct bsg_job {int reply_len; TYPE_3__ reply_payload; struct fc_bsg_reply* reply; } ;

/* Variables and functions */
 scalar_t__ ECONNABORTED ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  FC_CTELS_STATUS_OK ; 
 int /*<<< orphan*/  FC_CTELS_STATUS_REJECT ; 
 scalar_t__ FC_EOF_T ; 
 int /*<<< orphan*/  FC_EX_CLOSED ; 
 int FC_FC_END_SEQ ; 
 int FC_FC_LAST_SEQ ; 
 unsigned short FC_FS_ACC ; 
 scalar_t__ FC_SOF_I3 ; 
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct bsg_job*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC5 (struct fc_frame*) ; 
 void* FUNC6 (struct fc_frame*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct fc_frame*) ; 
 scalar_t__ FUNC8 (struct fc_frame*) ; 
 int FUNC9 (struct fc_frame*) ; 
 scalar_t__ FUNC10 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC11 (struct fc_bsg_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct fc_seq *sp, struct fc_frame *fp,
			      void *info_arg)
{
	struct fc_bsg_info *info = info_arg;
	struct bsg_job *job = info->job;
	struct fc_bsg_reply *bsg_reply = job->reply;
	struct fc_lport *lport = info->lport;
	struct fc_frame_header *fh;
	size_t len;
	void *buf;

	if (FUNC0(fp)) {
		bsg_reply->result = (FUNC1(fp) == -FC_EX_CLOSED) ?
			-ECONNABORTED : -ETIMEDOUT;
		job->reply_len = sizeof(uint32_t);
		FUNC2(job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
		FUNC11(info);
		return;
	}

	FUNC12(&lport->lp_mutex);
	fh = FUNC5(fp);
	len = FUNC9(fp) - sizeof(*fh);
	buf = FUNC6(fp, 0);

	if (FUNC10(fp) == FC_SOF_I3 && !FUNC15(fh->fh_seq_cnt)) {
		/* Get the response code from the first frame payload */
		unsigned short cmd = (info->rsp_code == FC_FS_ACC) ?
			FUNC15(((struct fc_ct_hdr *)buf)->ct_cmd) :
			(unsigned short)FUNC7(fp);

		/* Save the reply status of the job */
		bsg_reply->reply_data.ctels_reply.status =
			(cmd == info->rsp_code) ?
			FC_CTELS_STATUS_OK : FC_CTELS_STATUS_REJECT;
	}

	bsg_reply->reply_payload_rcv_len +=
		FUNC3(buf, len, info->sg, &info->nents,
					 &info->offset, NULL);

	if (FUNC8(fp) == FC_EOF_T &&
	    (FUNC14(fh->fh_f_ctl) & (FC_FC_LAST_SEQ | FC_FC_END_SEQ)) ==
	    (FC_FC_LAST_SEQ | FC_FC_END_SEQ)) {
		if (bsg_reply->reply_payload_rcv_len >
		    job->reply_payload.payload_len)
			bsg_reply->reply_payload_rcv_len =
				job->reply_payload.payload_len;
		bsg_reply->result = 0;
		FUNC2(job, bsg_reply->result,
			       bsg_reply->reply_payload_rcv_len);
		FUNC11(info);
	}
	FUNC4(fp);
	FUNC13(&lport->lp_mutex);
}
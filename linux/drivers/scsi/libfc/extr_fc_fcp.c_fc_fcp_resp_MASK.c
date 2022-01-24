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
typedef  int u8 ;
typedef  int u32 ;
struct fcp_resp_rsp_info {scalar_t__ rsp_code; } ;
struct fcp_resp_ext {int /*<<< orphan*/  fr_resid; int /*<<< orphan*/  fr_sns_len; int /*<<< orphan*/  fr_rsp_len; } ;
struct fcp_resp {scalar_t__ fr_status; int fr_flags; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {scalar_t__ cdb_status; int scsi_comp_flags; int data_len; scalar_t__ scsi_resid; int xfer_len; void* status_code; TYPE_2__* rport; TYPE_1__* lp; int /*<<< orphan*/  state; TYPE_3__* cmd; int /*<<< orphan*/  tm_done; scalar_t__ wait_for_comp; } ;
struct TYPE_6__ {scalar_t__ underflow; int /*<<< orphan*/  sense_buffer; } ;
struct TYPE_5__ {int port_id; } ;
struct TYPE_4__ {scalar_t__ qfull; } ;

/* Variables and functions */
 int FCP_CONF_REQ ; 
 int FCP_RESID_OVER ; 
 int FCP_RESID_UNDER ; 
 int FCP_RESP_RSP_INFO_LEN4 ; 
 int FCP_RESP_RSP_INFO_LEN8 ; 
 int FCP_RSP_LEN_VAL ; 
 int FCP_SNS_LEN_VAL ; 
 void* FC_DATA_OVRRUN ; 
 void* FC_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*,char*,int,...) ; 
 int /*<<< orphan*/  FC_SRB_RCV_STATUS ; 
 scalar_t__ SAM_STAT_GOOD ; 
 int SCSI_SENSE_BUFFERSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct fc_frame*) ; 
 int FUNC6 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct fc_fcp_pkt *fsp, struct fc_frame *fp)
{
	struct fc_frame_header *fh;
	struct fcp_resp *fc_rp;
	struct fcp_resp_ext *rp_ex;
	struct fcp_resp_rsp_info *fc_rp_info;
	u32 plen;
	u32 expected_len;
	u32 respl = 0;
	u32 snsl = 0;
	u8 flags = 0;

	plen = FUNC6(fp);
	fh = (struct fc_frame_header *)FUNC5(fp);
	if (FUNC11(plen < sizeof(*fh) + sizeof(*fc_rp)))
		goto len_err;
	plen -= sizeof(*fh);
	fc_rp = (struct fcp_resp *)(fh + 1);
	fsp->cdb_status = fc_rp->fr_status;
	flags = fc_rp->fr_flags;
	fsp->scsi_comp_flags = flags;
	expected_len = fsp->data_len;

	/* if ddp, update xfer len */
	FUNC3(fsp);

	if (FUNC11((flags & ~FCP_CONF_REQ) || fc_rp->fr_status)) {
		rp_ex = (void *)(fc_rp + 1);
		if (flags & (FCP_RSP_LEN_VAL | FCP_SNS_LEN_VAL)) {
			if (plen < sizeof(*fc_rp) + sizeof(*rp_ex))
				goto len_err;
			fc_rp_info = (struct fcp_resp_rsp_info *)(rp_ex + 1);
			if (flags & FCP_RSP_LEN_VAL) {
				respl = FUNC9(rp_ex->fr_rsp_len);
				if ((respl != FCP_RESP_RSP_INFO_LEN4) &&
				    (respl != FCP_RESP_RSP_INFO_LEN8))
					goto len_err;
				if (fsp->wait_for_comp) {
					/* Abuse cdb_status for rsp code */
					fsp->cdb_status = fc_rp_info->rsp_code;
					FUNC1(&fsp->tm_done);
					/*
					 * tmfs will not have any scsi cmd so
					 * exit here
					 */
					return;
				}
			}
			if (flags & FCP_SNS_LEN_VAL) {
				snsl = FUNC9(rp_ex->fr_sns_len);
				if (snsl > SCSI_SENSE_BUFFERSIZE)
					snsl = SCSI_SENSE_BUFFERSIZE;
				FUNC8(fsp->cmd->sense_buffer,
				       (char *)fc_rp_info + respl, snsl);
			}
		}
		if (flags & (FCP_RESID_UNDER | FCP_RESID_OVER)) {
			if (plen < sizeof(*fc_rp) + sizeof(rp_ex->fr_resid))
				goto len_err;
			if (flags & FCP_RESID_UNDER) {
				fsp->scsi_resid = FUNC9(rp_ex->fr_resid);
				/*
				 * The cmnd->underflow is the minimum number of
				 * bytes that must be transferred for this
				 * command.  Provided a sense condition is not
				 * present, make sure the actual amount
				 * transferred is at least the underflow value
				 * or fail.
				 */
				if (!(flags & FCP_SNS_LEN_VAL) &&
				    (fc_rp->fr_status == 0) &&
				    (FUNC10(fsp->cmd) -
				     fsp->scsi_resid) < fsp->cmd->underflow)
					goto err;
				expected_len -= fsp->scsi_resid;
			} else {
				fsp->status_code = FC_ERROR;
			}
		}
	}
	fsp->state |= FC_SRB_RCV_STATUS;

	/*
	 * Check for missing or extra data frames.
	 */
	if (FUNC11(fsp->cdb_status == SAM_STAT_GOOD &&
		     fsp->xfer_len != expected_len)) {
		if (fsp->xfer_len < expected_len) {
			/*
			 * Some data may be queued locally,
			 * Wait a at least one jiffy to see if it is delivered.
			 * If this expires without data, we may do SRR.
			 */
			if (fsp->lp->qfull) {
				FUNC0(fsp, "tgt %6.6x queue busy retry\n",
					   fsp->rport->port_id);
				return;
			}
			FUNC0(fsp, "tgt %6.6x xfer len %zx data underrun "
				   "len %x, data len %x\n",
				   fsp->rport->port_id,
				   fsp->xfer_len, expected_len, fsp->data_len);
			FUNC4(fsp, FUNC7(fsp));
			return;
		}
		fsp->status_code = FC_DATA_OVRRUN;
		FUNC0(fsp, "tgt %6.6x xfer len %zx greater than expected, "
			   "len %x, data len %x\n",
			   fsp->rport->port_id,
			   fsp->xfer_len, expected_len, fsp->data_len);
	}
	FUNC2(fsp);
	return;

len_err:
	FUNC0(fsp, "short FCP response. flags 0x%x len %u respl %u "
		   "snsl %u\n", flags, FUNC6(fp), respl, snsl);
err:
	fsp->status_code = FC_ERROR;
	FUNC2(fsp);
}
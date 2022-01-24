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
typedef  scalar_t__ u8 ;
struct fcp_txrdy {int /*<<< orphan*/  ft_burst_len; int /*<<< orphan*/  ft_data_ro; } ;
struct fc_seq {int /*<<< orphan*/  rec_data; } ;
struct fc_lport {scalar_t__ state; } ;
struct fc_frame_header {scalar_t__ fh_r_ctl; scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int state; int /*<<< orphan*/  xfer_contig_end; int /*<<< orphan*/  xfer_len; struct fc_lport* lp; } ;

/* Variables and functions */
 int FCPHF_CRC_UNCHECKED ; 
 int /*<<< orphan*/  FUNC0 (struct fc_fcp_pkt*,char*,scalar_t__,...) ; 
 scalar_t__ FC_RCTL_DD_CMD_STATUS ; 
 scalar_t__ FC_RCTL_DD_DATA_DESC ; 
 scalar_t__ FC_RCTL_DD_SOL_DATA ; 
 int FC_SRB_ABORTED ; 
 int FC_SRB_ABORT_PENDING ; 
 scalar_t__ FC_TYPE_BLS ; 
 scalar_t__ FUNC1 (struct fc_frame*) ; 
 scalar_t__ LPORT_ST_READY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 scalar_t__ FUNC5 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 int FUNC8 (struct fc_fcp_pkt*,struct fc_seq*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC11 (struct fc_frame*) ; 
 struct fcp_txrdy* FUNC12 (struct fc_frame*,int) ; 
 int FUNC13 (struct fc_frame*) ; 
 int FUNC14 (struct fc_frame*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
	struct fc_fcp_pkt *fsp = (struct fc_fcp_pkt *)arg;
	struct fc_lport *lport = fsp->lp;
	struct fc_frame_header *fh;
	struct fcp_txrdy *dd;
	u8 r_ctl;
	int rc = 0;

	if (FUNC1(fp)) {
		FUNC4(fsp, fp);
		return;
	}

	fh = FUNC11(fp);
	r_ctl = fh->fh_r_ctl;

	if (lport->state != LPORT_ST_READY) {
		FUNC0(fsp, "lport state %d, ignoring r_ctl %x\n",
			   lport->state, r_ctl);
		goto out;
	}
	if (FUNC5(fsp))
		goto out;

	if (fh->fh_type == FC_TYPE_BLS) {
		FUNC3(fsp, fp);
		goto unlock;
	}

	if (fsp->state & (FC_SRB_ABORTED | FC_SRB_ABORT_PENDING)) {
		FUNC0(fsp, "command aborted, ignoring r_ctl %x\n", r_ctl);
		goto unlock;
	}

	if (r_ctl == FC_RCTL_DD_DATA_DESC) {
		/*
		 * received XFER RDY from the target
		 * need to send data to the target
		 */
		FUNC2(FUNC13(fp) & FCPHF_CRC_UNCHECKED);
		dd = FUNC12(fp, sizeof(*dd));
		FUNC2(!dd);

		rc = FUNC8(fsp, seq,
				      (size_t) FUNC15(dd->ft_data_ro),
				      (size_t) FUNC15(dd->ft_burst_len));
		if (!rc)
			seq->rec_data = fsp->xfer_len;
	} else if (r_ctl == FC_RCTL_DD_SOL_DATA) {
		/*
		 * received a DATA frame
		 * next we will copy the data to the system buffer
		 */
		FUNC2(FUNC14(fp) < sizeof(*fh));	/* len may be 0 */
		FUNC6(fsp, fp);
		seq->rec_data = fsp->xfer_contig_end;
	} else if (r_ctl == FC_RCTL_DD_CMD_STATUS) {
		FUNC2(FUNC13(fp) & FCPHF_CRC_UNCHECKED);

		FUNC7(fsp, fp);
	} else {
		FUNC0(fsp, "unexpected frame.  r_ctl %x\n", r_ctl);
	}
unlock:
	FUNC9(fsp);
out:
	FUNC10(fp);
}
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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  fr_flags; int /*<<< orphan*/  fr_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  fr_rsp_len; } ;
struct fcp_resp_with_ext {TYPE_2__ resp; TYPE_1__ ext; } ;
struct fcp_resp_rsp_info {int rsp_code; } ;
struct fc_seq {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_3__ tt; } ;
struct fc_frame_header {int /*<<< orphan*/  fh_ox_id; int /*<<< orphan*/  fh_s_id; } ;
struct fc_frame {int dummy; } ;
typedef  enum fcp_resp_rsp_codes { ____Placeholder_fcp_resp_rsp_codes } fcp_resp_rsp_codes ;

/* Variables and functions */
 int /*<<< orphan*/  FCP_RSP_LEN_VAL ; 
 int /*<<< orphan*/  FC_RCTL_DD_CMD_STATUS ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 int /*<<< orphan*/  FUNC0 (struct fc_seq*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*,struct fc_frame const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC2 (struct fc_lport*,size_t) ; 
 struct fc_frame_header* FUNC3 (struct fc_frame const*) ; 
 struct fcp_resp_with_ext* FUNC4 (struct fc_frame*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*,struct fc_seq*,struct fc_frame*) ; 
 struct fc_seq* FUNC6 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct fcp_resp_with_ext*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC13(struct fc_lport *lport,
				const struct fc_frame *rx_fp,
				u32 status, enum fcp_resp_rsp_codes code)
{
	struct fc_frame *fp;
	struct fc_seq *sp;
	const struct fc_frame_header *fh;
	size_t len;
	struct fcp_resp_with_ext *fcp;
	struct fcp_resp_rsp_info *info;

	fh = FUNC3(rx_fp);
	FUNC11("FCP error response: did %x oxid %x status %x code %x\n",
		  FUNC9(fh->fh_s_id), FUNC10(fh->fh_ox_id), status, code);
	len = sizeof(*fcp);
	if (status == SAM_STAT_GOOD)
		len += sizeof(*info);
	fp = FUNC2(lport, len);
	if (!fp)
		return;
	fcp = FUNC4(fp, len);
	FUNC8(fcp, 0, len);
	fcp->resp.fr_status = status;
	if (status == SAM_STAT_GOOD) {
		fcp->ext.fr_rsp_len = FUNC7(sizeof(*info));
		fcp->resp.fr_flags |= FCP_RSP_LEN_VAL;
		info = (struct fcp_resp_rsp_info *)(fcp + 1);
		info->rsp_code = code;
	}

	FUNC1(fp, rx_fp, FC_RCTL_DD_CMD_STATUS, 0);
	sp = FUNC6(fp);
	if (sp) {
		FUNC5(lport, sp, fp);
		FUNC0(sp);
	} else {
		lport->tt.frame_send(lport, fp);
	}
}
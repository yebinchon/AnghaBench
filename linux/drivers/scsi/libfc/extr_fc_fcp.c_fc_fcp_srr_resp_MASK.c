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
struct fc_seq {int dummy; } ;
struct fc_frame_header {scalar_t__ fh_type; } ;
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int /*<<< orphan*/  recov_retry; } ;

/* Variables and functions */
#define  ELS_LS_ACC 129 
#define  ELS_LS_RJT 128 
 int /*<<< orphan*/  FC_ERROR ; 
 scalar_t__ FC_TYPE_BLS ; 
 scalar_t__ FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_seq*) ; 
 scalar_t__ FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_frame*) ; 
 struct fc_frame_header* FUNC8 (struct fc_frame*) ; 
 int FUNC9 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_fcp_pkt*) ; 

__attribute__((used)) static void FUNC11(struct fc_seq *seq, struct fc_frame *fp, void *arg)
{
	struct fc_fcp_pkt *fsp = arg;
	struct fc_frame_header *fh;

	if (FUNC0(fp)) {
		FUNC4(fsp, fp);
		return;
	}

	if (FUNC2(fsp))
		goto out;

	fh = FUNC8(fp);
	/*
	 * BUG? fc_fcp_srr_error calls fc_exch_done which would release
	 * the ep. But if fc_fcp_srr_error had got -FC_EX_TIMEOUT,
	 * then fc_exch_timeout would be sending an abort. The fc_exch_done
	 * call by fc_fcp_srr_error would prevent fc_exch.c from seeing
	 * an abort response though.
	 */
	if (fh->fh_type == FC_TYPE_BLS) {
		FUNC6(fsp);
		return;
	}

	switch (FUNC9(fp)) {
	case ELS_LS_ACC:
		fsp->recov_retry = 0;
		FUNC5(fsp, FUNC10(fsp));
		break;
	case ELS_LS_RJT:
	default:
		FUNC3(fsp, FC_ERROR);
		break;
	}
	FUNC6(fsp);
out:
	FUNC1(seq);
	FUNC7(fp);
}
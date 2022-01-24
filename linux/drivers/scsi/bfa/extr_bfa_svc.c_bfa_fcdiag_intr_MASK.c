#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int msg_id; } ;
struct bfi_msg_s {TYPE_1__ mhdr; } ;
struct bfi_diag_lb_rsp_s {int dummy; } ;
struct bfi_diag_dport_scn_s {int dummy; } ;
struct bfi_diag_dport_rsp_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcdiag_s {int /*<<< orphan*/  dport; } ;
typedef  int /*<<< orphan*/  bfi_diag_qtest_rsp_t ;

/* Variables and functions */
 struct bfa_fcdiag_s* FUNC0 (struct bfa_s*) ; 
#define  BFI_DIAG_I2H_DPORT 131 
#define  BFI_DIAG_I2H_DPORT_SCN 130 
#define  BFI_DIAG_I2H_LOOPBACK 129 
#define  BFI_DIAG_I2H_QTEST 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bfi_diag_dport_rsp_s*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bfi_diag_dport_scn_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcdiag_s*,struct bfi_diag_lb_rsp_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_fcdiag_s*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct bfa_fcdiag_s*,int) ; 

void
FUNC7(struct bfa_s *bfa, struct bfi_msg_s *msg)
{
	struct bfa_fcdiag_s *fcdiag = FUNC0(bfa);

	switch (msg->mhdr.msg_id) {
	case BFI_DIAG_I2H_LOOPBACK:
		FUNC4(fcdiag,
				(struct bfi_diag_lb_rsp_s *) msg);
		break;
	case BFI_DIAG_I2H_QTEST:
		FUNC5(fcdiag, (bfi_diag_qtest_rsp_t *)msg);
		break;
	case BFI_DIAG_I2H_DPORT:
		FUNC2(&fcdiag->dport,
				(struct bfi_diag_dport_rsp_s *)msg);
		break;
	case BFI_DIAG_I2H_DPORT_SCN:
		FUNC3(&fcdiag->dport,
				(struct bfi_diag_dport_scn_s *)msg);
		break;
	default:
		FUNC6(fcdiag, msg->mhdr.msg_id);
		FUNC1(1);
	}
}
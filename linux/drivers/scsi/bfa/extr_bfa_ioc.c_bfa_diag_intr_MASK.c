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
struct bfi_mbmsg_s {TYPE_1__ mh; } ;
struct bfi_diag_ledtest_rsp_s {int dummy; } ;
struct bfi_diag_fwping_rsp_s {int dummy; } ;
struct bfa_diag_s {int dummy; } ;
typedef  int /*<<< orphan*/  bfi_diag_ts_rsp_t ;

/* Variables and functions */
#define  BFI_DIAG_I2H_FWPING 131 
#define  BFI_DIAG_I2H_LEDTEST 130 
#define  BFI_DIAG_I2H_PORTBEACON 129 
#define  BFI_DIAG_I2H_TEMPSENSOR 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_diag_s*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_diag_s*,struct bfi_diag_fwping_rsp_s*) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_diag_s*,struct bfi_diag_ledtest_rsp_s*) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_diag_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_diag_s*,int /*<<< orphan*/ *) ; 

void
FUNC6(void *diagarg, struct bfi_mbmsg_s *msg)
{
	struct bfa_diag_s *diag = diagarg;

	switch (msg->mh.msg_id) {
	case BFI_DIAG_I2H_PORTBEACON:
		FUNC4(diag);
		break;
	case BFI_DIAG_I2H_FWPING:
		FUNC2(diag, (struct bfi_diag_fwping_rsp_s *) msg);
		break;
	case BFI_DIAG_I2H_TEMPSENSOR:
		FUNC5(diag, (bfi_diag_ts_rsp_t *) msg);
		break;
	case BFI_DIAG_I2H_LEDTEST:
		FUNC3(diag, (struct bfi_diag_ledtest_rsp_s *) msg);
		break;
	default:
		FUNC1(diag, msg->mh.msg_id);
		FUNC0(1);
	}
}
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
union bfi_lps_i2h_msg_u {int /*<<< orphan*/  cvl_event; int /*<<< orphan*/  logout_rsp; int /*<<< orphan*/  login_rsp; struct bfi_msg_s* msg; } ;
struct TYPE_2__ {int msg_id; } ;
struct bfi_msg_s {TYPE_1__ mhdr; } ;
struct bfa_s {int dummy; } ;

/* Variables and functions */
#define  BFI_LPS_I2H_CVL_EVENT 130 
#define  BFI_LPS_I2H_LOGIN_RSP 129 
#define  BFI_LPS_I2H_LOGOUT_RSP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_s*,int) ; 

void
FUNC5(struct bfa_s *bfa, struct bfi_msg_s *m)
{
	union bfi_lps_i2h_msg_u	msg;

	FUNC4(bfa, m->mhdr.msg_id);
	msg.msg = m;

	switch (m->mhdr.msg_id) {
	case BFI_LPS_I2H_LOGIN_RSP:
		FUNC1(bfa, msg.login_rsp);
		break;

	case BFI_LPS_I2H_LOGOUT_RSP:
		FUNC2(bfa, msg.logout_rsp);
		break;

	case BFI_LPS_I2H_CVL_EVENT:
		FUNC3(bfa, msg.cvl_event);
		break;

	default:
		FUNC4(bfa, m->mhdr.msg_id);
		FUNC0(1);
	}
}
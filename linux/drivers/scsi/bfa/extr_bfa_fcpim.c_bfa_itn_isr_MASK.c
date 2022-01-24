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
union bfi_itn_i2h_msg_u {TYPE_1__* create_rsp; struct bfi_msg_s* msg; } ;
struct bfi_msg_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_itn_s {int /*<<< orphan*/  (* isr ) (struct bfa_s*,struct bfi_msg_s*) ;} ;
struct bfa_fcp_mod_s {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bfa_handle; } ;

/* Variables and functions */
 struct bfa_fcp_mod_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_itn_s* FUNC1 (struct bfa_fcp_mod_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_s*,struct bfi_msg_s*) ; 

void
FUNC4(struct bfa_s *bfa, struct bfi_msg_s *m)
{
	struct bfa_fcp_mod_s *fcp = FUNC0(bfa);
	union bfi_itn_i2h_msg_u msg;
	struct bfa_itn_s *itn;

	msg.msg = m;
	itn =  FUNC1(fcp, msg.create_rsp->bfa_handle);

	if (itn->isr)
		itn->isr(bfa, m);
	else
		FUNC2(1);
}
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
typedef  scalar_t__ u16 ;
struct bfi_msg_s {int dummy; } ;
struct bfi_ioim_rsp_s {int /*<<< orphan*/  io_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_ioim_s {scalar_t__ iotag; } ;
struct bfa_fcpim_s {int dummy; } ;

/* Variables and functions */
 struct bfa_fcpim_s* FUNC0 (struct bfa_s*) ; 
 struct bfa_ioim_s* FUNC1 (struct bfa_fcpim_s*,scalar_t__) ; 
 int /*<<< orphan*/  BFA_IOIM_SM_COMP_GOOD ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfa_fcpim_s*,struct bfa_ioim_s*) ; 
 int /*<<< orphan*/  FUNC5 (struct bfa_ioim_s*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct bfa_s *bfa, struct bfi_msg_s *m)
{
	struct bfa_fcpim_s *fcpim = FUNC0(bfa);
	struct bfi_ioim_rsp_s *rsp = (struct bfi_ioim_rsp_s *) m;
	struct bfa_ioim_s *ioim;
	u16	iotag;

	iotag = FUNC3(rsp->io_tag);

	ioim = FUNC1(fcpim, iotag);
	FUNC2(ioim->iotag != iotag);

	FUNC4(fcpim, ioim);

	FUNC5(ioim, BFA_IOIM_SM_COMP_GOOD);
}
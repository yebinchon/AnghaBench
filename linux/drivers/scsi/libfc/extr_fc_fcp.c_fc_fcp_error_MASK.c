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
struct fc_frame {int dummy; } ;
struct fc_fcp_pkt {int /*<<< orphan*/  status_code; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_CMD_PLOGO ; 
 int /*<<< orphan*/  FC_ERROR ; 
 int FC_EX_CLOSED ; 
 int /*<<< orphan*/  FC_SRB_ABORT_PENDING ; 
 int FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_fcp_pkt*) ; 
 scalar_t__ FUNC2 (struct fc_fcp_pkt*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_fcp_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_fcp_pkt*) ; 

__attribute__((used)) static void FUNC5(struct fc_fcp_pkt *fsp, struct fc_frame *fp)
{
	int error = FUNC0(fp);

	if (FUNC2(fsp))
		return;

	if (error == -FC_EX_CLOSED) {
		FUNC3(fsp, FC_ERROR);
		goto unlock;
	}

	/*
	 * clear abort pending, because the lower layer
	 * decided to force completion.
	 */
	fsp->state &= ~FC_SRB_ABORT_PENDING;
	fsp->status_code = FC_CMD_PLOGO;
	FUNC1(fsp);
unlock:
	FUNC4(fsp);
}
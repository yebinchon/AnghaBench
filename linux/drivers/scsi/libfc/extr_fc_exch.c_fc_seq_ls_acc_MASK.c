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
struct fc_seq {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_ls_acc {int /*<<< orphan*/  la_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REP ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC2 (struct fc_lport*,int) ; 
 struct fc_els_ls_acc* FUNC3 (struct fc_frame*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_seq*) ; 
 struct fc_lport* FUNC5 (struct fc_frame*) ; 
 struct fc_seq* FUNC6 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_els_ls_acc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC9(struct fc_frame *rx_fp)
{
	struct fc_lport *lport;
	struct fc_els_ls_acc *acc;
	struct fc_frame *fp;
	struct fc_seq *sp;

	lport = FUNC5(rx_fp);
	sp = FUNC6(rx_fp);
	fp = FUNC2(lport, sizeof(*acc));
	if (!fp) {
		FUNC0(FUNC4(sp),
			    "exch: drop LS_ACC, out of memory\n");
		return;
	}
	acc = FUNC3(fp, sizeof(*acc));
	FUNC7(acc, 0, sizeof(*acc));
	acc->la_cmd = ELS_LS_ACC;
	FUNC1(fp, rx_fp, FC_RCTL_ELS_REP, 0);
	lport->tt.frame_send(lport, fp);
}
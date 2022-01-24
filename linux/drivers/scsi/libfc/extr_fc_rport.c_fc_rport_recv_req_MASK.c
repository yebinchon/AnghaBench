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
struct fc_seq_els_data {int /*<<< orphan*/  explan; int /*<<< orphan*/  reason; } ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
#define  ELS_ADISC 137 
 int /*<<< orphan*/  ELS_EXPL_NONE ; 
#define  ELS_FLOGI 136 
#define  ELS_LOGO 135 
 int /*<<< orphan*/  ELS_LS_RJT ; 
#define  ELS_PLOGI 134 
#define  ELS_PRLI 133 
#define  ELS_PRLO 132 
#define  ELS_REC 131 
 int /*<<< orphan*/  ELS_RJT_UNSUP ; 
#define  ELS_RLS 130 
#define  ELS_RRQ 129 
#define  ELS_RTV 128 
 int /*<<< orphan*/  FUNC0 (struct fc_frame*) ; 
 int FUNC1 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_frame*,int /*<<< orphan*/ ,struct fc_seq_els_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct fc_lport *lport, struct fc_frame *fp)
{
	struct fc_seq_els_data els_data;

	FUNC7(&lport->lp_mutex);

	/*
	 * Handle FLOGI, PLOGI and LOGO requests separately, since they
	 * don't require prior login.
	 * Check for unsupported opcodes first and reject them.
	 * For some ops, it would be incorrect to reject with "PLOGI required".
	 */
	switch (FUNC1(fp)) {
	case ELS_FLOGI:
		FUNC3(lport, fp);
		break;
	case ELS_PLOGI:
		FUNC5(lport, fp);
		break;
	case ELS_LOGO:
		FUNC4(lport, fp);
		break;
	case ELS_PRLI:
	case ELS_PRLO:
	case ELS_ADISC:
	case ELS_RRQ:
	case ELS_REC:
	case ELS_RLS:
	case ELS_RTV:
		FUNC2(lport, fp);
		break;
	default:
		els_data.reason = ELS_RJT_UNSUP;
		els_data.explan = ELS_EXPL_NONE;
		FUNC6(fp, ELS_LS_RJT, &els_data);
		FUNC0(fp);
		break;
	}
}
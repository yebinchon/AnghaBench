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
struct fc_lport {int dummy; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_EXPL_NONE ; 
 int /*<<< orphan*/  ELS_LS_RJT ; 
 int /*<<< orphan*/  ELS_RJT_UNSUP ; 
 int /*<<< orphan*/  FUNC0 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*,int /*<<< orphan*/ ,struct fc_seq_els_data*) ; 

__attribute__((used)) static void FUNC2(struct fc_lport *lport, struct fc_frame *fp)
{
	struct fc_seq_els_data rjt_data;

	rjt_data.reason = ELS_RJT_UNSUP;
	rjt_data.explan = ELS_EXPL_NONE;
	FUNC1(fp, ELS_LS_RJT, &rjt_data);
	FUNC0(fp);
}
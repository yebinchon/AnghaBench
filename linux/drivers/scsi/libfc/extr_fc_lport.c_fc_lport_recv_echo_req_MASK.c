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
struct TYPE_2__ {int /*<<< orphan*/  (* frame_send ) (struct fc_lport*,struct fc_frame*) ;} ;
struct fc_lport {TYPE_1__ tt; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame_header {int dummy; } ;
struct fc_frame {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ELS_LS_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FC_RCTL_ELS_REP ; 
 int /*<<< orphan*/  FUNC1 (struct fc_frame*,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC2 (struct fc_lport*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 void* FUNC4 (struct fc_frame*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*) ; 
 int FUNC6 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct fc_lport*,struct fc_frame*) ; 

__attribute__((used)) static void FUNC11(struct fc_lport *lport,
				   struct fc_frame *in_fp)
{
	struct fc_frame *fp;
	unsigned int len;
	void *pp;
	void *dp;

	FUNC8(&lport->lp_mutex);

	FUNC0(lport, "Received ECHO request while in state %s\n",
		     FUNC5(lport));

	len = FUNC6(in_fp) - sizeof(struct fc_frame_header);
	pp = FUNC4(in_fp, len);

	if (len < sizeof(__be32))
		len = sizeof(__be32);

	fp = FUNC2(lport, len);
	if (fp) {
		dp = FUNC4(fp, len);
		FUNC9(dp, pp, len);
		*((__be32 *)dp) = FUNC7(ELS_LS_ACC << 24);
		FUNC1(fp, in_fp, FC_RCTL_ELS_REP, 0);
		lport->tt.frame_send(lport, fp);
	}
	FUNC3(in_fp);
}
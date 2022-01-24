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
typedef  int /*<<< orphan*/  u32 ;
struct fc_rport_priv {int /*<<< orphan*/  kref; int /*<<< orphan*/  rp_mutex; } ;
struct fc_lport {int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_LS_ACC ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  RPORT_EV_STOP ; 
 int /*<<< orphan*/  FUNC2 (struct fc_frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_frame*) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC4 (struct fc_rport_priv*,int /*<<< orphan*/ ) ; 
 struct fc_rport_priv* FUNC5 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct fc_lport *lport, struct fc_frame *fp)
{
	struct fc_rport_priv *rdata;
	u32 sid;

	FUNC9(&lport->lp_mutex);

	FUNC7(fp, ELS_LS_ACC, NULL);

	sid = FUNC3(fp);

	rdata = FUNC5(lport, sid);
	if (rdata) {
		FUNC10(&rdata->rp_mutex);
		FUNC0(rdata, "Received LOGO request while in state %s\n",
			     FUNC6(rdata));

		FUNC4(rdata, RPORT_EV_STOP);
		FUNC11(&rdata->rp_mutex);
		FUNC8(&rdata->kref, fc_rport_destroy);
	} else
		FUNC1(lport, sid,
				"Received LOGO from non-logged-in port\n");
	FUNC2(fp);
}
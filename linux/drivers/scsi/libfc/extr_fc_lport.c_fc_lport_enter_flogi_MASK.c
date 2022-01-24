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
struct TYPE_2__ {int /*<<< orphan*/  (* elsct_send ) (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_lport*,int) ;} ;
struct fc_lport {int r_a_tov; int e_d_tov; scalar_t__ vport; TYPE_1__ tt; scalar_t__ port_id; scalar_t__ point_to_multipoint; int /*<<< orphan*/  lp_mutex; } ;
struct fc_frame {int dummy; } ;
struct fc_els_flogi {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_FDISC ; 
 int /*<<< orphan*/  ELS_FLOGI ; 
 int /*<<< orphan*/  FC_FID_FLOGI ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPORT_ST_FLOGI ; 
 struct fc_frame* FUNC1 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 void FUNC3 (struct fc_lport*,struct fc_frame*) ; 
 int /*<<< orphan*/  fc_lport_flogi_resp ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_lport*,int) ; 

__attribute__((used)) static void FUNC8(struct fc_lport *lport)
{
	struct fc_frame *fp;

	FUNC6(&lport->lp_mutex);

	FUNC0(lport, "Entered FLOGI state from %s state\n",
		     FUNC4(lport));

	FUNC5(lport, LPORT_ST_FLOGI);

	if (lport->point_to_multipoint) {
		if (lport->port_id)
			FUNC2(lport);
		return;
	}

	fp = FUNC1(lport, sizeof(struct fc_els_flogi));
	if (!fp)
		return FUNC3(lport, fp);

	if (!lport->tt.elsct_send(lport, FC_FID_FLOGI, fp,
				  lport->vport ? ELS_FDISC : ELS_FLOGI,
				  fc_lport_flogi_resp, lport,
				  lport->vport ? 2 * lport->r_a_tov :
				  lport->e_d_tov))
		FUNC3(lport, NULL);
}
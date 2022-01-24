#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  port_id; } ;
struct fc_rport_priv {int /*<<< orphan*/  kref; TYPE_2__ ids; int /*<<< orphan*/  rp_mutex; struct fc_lport* local_port; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* elsct_send ) (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_rport_priv*,int /*<<< orphan*/ ) ;} ;
struct fc_lport {TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_els_logo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_LOGO ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int /*<<< orphan*/ ) ; 
 struct fc_frame* FUNC1 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  fc_rport_logo_resp ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_rport_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fc_rport_priv *rdata)
{
	struct fc_lport *lport = rdata->local_port;
	struct fc_frame *fp;

	FUNC5(&rdata->rp_mutex);

	FUNC0(rdata, "Port sending LOGO from %s state\n",
		     FUNC2(rdata));

	fp = FUNC1(lport, sizeof(struct fc_els_logo));
	if (!fp)
		return;
	FUNC3(&rdata->kref);
	if (!lport->tt.elsct_send(lport, rdata->ids.port_id, fp, ELS_LOGO,
				  fc_rport_logo_resp, rdata, 0))
		FUNC4(&rdata->kref, fc_rport_destroy);
}
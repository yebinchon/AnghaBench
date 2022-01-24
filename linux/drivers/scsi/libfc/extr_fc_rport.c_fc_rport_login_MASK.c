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
struct fc_rport_priv {int flags; int rp_state; int /*<<< orphan*/  rp_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,...) ; 
 int FC_RP_STARTED ; 
#define  RPORT_ST_DELETE 130 
#define  RPORT_ST_INIT 129 
#define  RPORT_ST_READY 128 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct fc_rport_priv *rdata)
{
	FUNC4(&rdata->rp_mutex);

	if (rdata->flags & FC_RP_STARTED) {
		FUNC0(rdata, "port already started\n");
		FUNC5(&rdata->rp_mutex);
		return 0;
	}

	rdata->flags |= FC_RP_STARTED;
	switch (rdata->rp_state) {
	case RPORT_ST_READY:
		FUNC0(rdata, "ADISC port\n");
		FUNC1(rdata);
		break;
	case RPORT_ST_DELETE:
		FUNC0(rdata, "Restart deleted port\n");
		break;
	case RPORT_ST_INIT:
		FUNC0(rdata, "Login to port\n");
		FUNC2(rdata);
		break;
	default:
		FUNC0(rdata, "Login in progress, state %s\n",
			     FUNC3(rdata));
		break;
	}
	FUNC5(&rdata->rp_mutex);

	return 0;
}
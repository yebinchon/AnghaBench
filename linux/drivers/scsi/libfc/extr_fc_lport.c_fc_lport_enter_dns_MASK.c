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
struct fc_rport_priv {int /*<<< orphan*/ * ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_1__ disc; int /*<<< orphan*/  lp_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_FID_DIR_SERV ; 
 int /*<<< orphan*/  FUNC0 (struct fc_lport*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPORT_ST_DNS ; 
 int /*<<< orphan*/  FUNC1 (struct fc_lport*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fc_lport_rport_ops ; 
 int /*<<< orphan*/  FUNC2 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 struct fc_rport_priv* FUNC4 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct fc_lport *lport)
{
	struct fc_rport_priv *rdata;

	FUNC6(&lport->lp_mutex);

	FUNC0(lport, "Entered DNS state from %s state\n",
		     FUNC2(lport));

	FUNC3(lport, LPORT_ST_DNS);

	FUNC7(&lport->disc.disc_mutex);
	rdata = FUNC4(lport, FC_FID_DIR_SERV);
	FUNC8(&lport->disc.disc_mutex);
	if (!rdata)
		goto err;

	rdata->ops = &fc_lport_rport_ops;
	FUNC5(rdata);
	return;

err:
	FUNC1(lport, NULL);
}
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
struct fc_rport_priv {scalar_t__ disc_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  disc_mutex; } ;
struct fc_lport {TYPE_1__ disc; } ;
struct fc_disc_port {int /*<<< orphan*/  port_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct fc_lport*,struct fc_rport_priv*) ; 
 struct fc_rport_priv* FUNC1 (struct fc_lport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct fc_lport *lport, struct fc_disc_port *dp)
{
	struct fc_rport_priv *rdata;

	FUNC2(&lport->disc.disc_mutex);

	rdata = FUNC1(lport, dp->port_id);
	if (!rdata)
		return -ENOMEM;
	rdata->disc_id = 0;
	return FUNC0(lport, rdata);
}
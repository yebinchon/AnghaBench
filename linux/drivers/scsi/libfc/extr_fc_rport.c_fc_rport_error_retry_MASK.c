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
struct fc_rport_priv {scalar_t__ retries; int /*<<< orphan*/  kref; int /*<<< orphan*/  retry_work; TYPE_1__* local_port; int /*<<< orphan*/  rp_mutex; int /*<<< orphan*/  e_d_tov; } ;
struct TYPE_2__ {scalar_t__ max_rport_retry_count; } ;

/* Variables and functions */
 int FC_EX_CLOSED ; 
 int FC_EX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fc_rport_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct fc_rport_priv *rdata, int err)
{
	unsigned long delay = FUNC6(rdata->e_d_tov);

	FUNC5(&rdata->rp_mutex);

	/* make sure this isn't an FC_EX_CLOSED error, never retry those */
	if (err == -FC_EX_CLOSED)
		goto out;

	if (rdata->retries < rdata->local_port->max_rport_retry_count) {
		FUNC0(rdata, "Error %d in state %s, retrying\n",
			     err, FUNC2(rdata));
		rdata->retries++;
		/* no additional delay on exchange timeouts */
		if (err == -FC_EX_TIMEOUT)
			delay = 0;
		FUNC3(&rdata->kref);
		if (!FUNC7(&rdata->retry_work, delay))
			FUNC4(&rdata->kref, fc_rport_destroy);
		return;
	}

out:
	FUNC1(rdata, err);
}
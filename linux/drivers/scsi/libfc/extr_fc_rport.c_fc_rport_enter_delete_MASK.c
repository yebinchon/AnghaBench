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
struct fc_rport_priv {scalar_t__ rp_state; scalar_t__ event; int /*<<< orphan*/  kref; int /*<<< orphan*/  event_work; int /*<<< orphan*/  rp_mutex; } ;
typedef  enum fc_rport_event { ____Placeholder_fc_rport_event } fc_rport_event ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fc_rport_priv*,char*) ; 
 scalar_t__ RPORT_EV_NONE ; 
 scalar_t__ RPORT_ST_DELETE ; 
 int /*<<< orphan*/  fc_rport_destroy ; 
 int /*<<< orphan*/  FUNC1 (struct fc_rport_priv*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rport_event_queue ; 

__attribute__((used)) static void FUNC6(struct fc_rport_priv *rdata,
				  enum fc_rport_event event)
{
	FUNC4(&rdata->rp_mutex);

	if (rdata->rp_state == RPORT_ST_DELETE)
		return;

	FUNC0(rdata, "Delete port\n");

	FUNC1(rdata, RPORT_ST_DELETE);

	FUNC2(&rdata->kref);
	if (rdata->event == RPORT_EV_NONE &&
	    !FUNC5(rport_event_queue, &rdata->event_work))
		FUNC3(&rdata->kref, fc_rport_destroy);

	rdata->event = event;
}
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
struct TYPE_2__ {unsigned int virq; } ;
struct evtchn_status {int port; scalar_t__ status; scalar_t__ vcpu; TYPE_1__ u; int /*<<< orphan*/  dom; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_SELF ; 
 int ENOENT ; 
 int /*<<< orphan*/  EVTCHNOP_status ; 
 scalar_t__ EVTCHNSTAT_virq ; 
 int FUNC0 (int /*<<< orphan*/ ,struct evtchn_status*) ; 
 int /*<<< orphan*/  FUNC1 (struct evtchn_status*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static int FUNC4(unsigned int virq, unsigned int cpu)
{
	struct evtchn_status status;
	int port, rc = -ENOENT;

	FUNC1(&status, 0, sizeof(status));
	for (port = 0; port < FUNC2(); port++) {
		status.dom = DOMID_SELF;
		status.port = port;
		rc = FUNC0(EVTCHNOP_status, &status);
		if (rc < 0)
			continue;
		if (status.status != EVTCHNSTAT_virq)
			continue;
		if (status.u.virq == virq && status.vcpu == FUNC3(cpu)) {
			rc = port;
			break;
		}
	}
	return rc;
}
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
struct ibmvfc_host {scalar_t__ action; int reinit; int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 scalar_t__ IBMVFC_HOST_ACTION_NONE ; 
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_QUERY ; 
 int /*<<< orphan*/  IBMVFC_INITIALIZING ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ibmvfc_host *vhost)
{
	if (vhost->action == IBMVFC_HOST_ACTION_NONE) {
		if (!FUNC1(vhost, IBMVFC_INITIALIZING)) {
			FUNC2(vhost->host);
			FUNC0(vhost, IBMVFC_HOST_ACTION_QUERY);
		}
	} else
		vhost->reinit = 1;

	FUNC3(&vhost->work_wait_q);
}
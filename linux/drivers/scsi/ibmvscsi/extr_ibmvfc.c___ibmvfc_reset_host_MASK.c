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
struct ibmvfc_host {scalar_t__ action; int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  job_step; int /*<<< orphan*/  host; scalar_t__ logged_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  IBMVFC_HOST_ACTION_LOGO ; 
 scalar_t__ IBMVFC_HOST_ACTION_LOGO_WAIT ; 
 int /*<<< orphan*/  IBMVFC_INITIALIZING ; 
 int /*<<< orphan*/  FUNC0 (struct ibmvfc_host*) ; 
 int /*<<< orphan*/  ibmvfc_npiv_logout ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvfc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct ibmvfc_host *vhost)
{
	if (vhost->logged_in && vhost->action != IBMVFC_HOST_ACTION_LOGO_WAIT &&
	    !FUNC2(vhost, IBMVFC_INITIALIZING)) {
		FUNC3(vhost->host);
		FUNC1(vhost, IBMVFC_HOST_ACTION_LOGO);
		vhost->job_step = ibmvfc_npiv_logout;
		FUNC4(&vhost->work_wait_q);
	} else
		FUNC0(vhost);
}
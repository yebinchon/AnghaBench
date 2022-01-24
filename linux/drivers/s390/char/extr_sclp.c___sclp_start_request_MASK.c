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
struct sclp_req {int /*<<< orphan*/  status; int /*<<< orphan*/  start_count; int /*<<< orphan*/  sccb; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int SCLP_BUSY_INTERVAL ; 
 int /*<<< orphan*/  SCLP_REQ_FAILED ; 
 int /*<<< orphan*/  SCLP_REQ_RUNNING ; 
 int SCLP_RETRY_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sclp_request_timeout_normal ; 
 int /*<<< orphan*/  sclp_request_timeout_restart ; 
 int /*<<< orphan*/  sclp_request_timer ; 
 scalar_t__ sclp_running_state ; 
 scalar_t__ sclp_running_state_idle ; 
 scalar_t__ sclp_running_state_running ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct sclp_req *req)
{
	int rc;

	if (sclp_running_state != sclp_running_state_idle)
		return 0;
	FUNC1(&sclp_request_timer);
	rc = FUNC2(req->command, req->sccb);
	req->start_count++;

	if (rc == 0) {
		/* Successfully started request */
		req->status = SCLP_REQ_RUNNING;
		sclp_running_state = sclp_running_state_running;
		FUNC0(SCLP_RETRY_INTERVAL * HZ,
					 sclp_request_timeout_restart);
		return 0;
	} else if (rc == -EBUSY) {
		/* Try again later */
		FUNC0(SCLP_BUSY_INTERVAL * HZ,
					 sclp_request_timeout_normal);
		return 0;
	}
	/* Request failed */
	req->status = SCLP_REQ_FAILED;
	return rc;
}
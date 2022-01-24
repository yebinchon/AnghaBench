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
struct ibmvscsi_host_data {int /*<<< orphan*/  work_wait_q; int /*<<< orphan*/  action; int /*<<< orphan*/  request_limit; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_ERROR ; 
 int /*<<< orphan*/  IBMVSCSI_HOST_ACTION_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ibmvscsi_host_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ibmvscsi_host_data *hostdata)
{
	FUNC2(hostdata->host);
	FUNC0(&hostdata->request_limit, 0);

	FUNC1(hostdata, DID_ERROR);
	hostdata->action = IBMVSCSI_HOST_ACTION_RESET;
	FUNC3(&hostdata->work_wait_q);
}
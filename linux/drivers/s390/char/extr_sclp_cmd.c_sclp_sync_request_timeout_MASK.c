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
struct sclp_req {int queue_timeout; scalar_t__ status; struct completion* callback_data; int /*<<< orphan*/  callback; void* sccb; int /*<<< orphan*/  command; } ;
struct completion {int dummy; } ;
typedef  int /*<<< orphan*/  sclp_cmdw_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SCLP_REQ_DONE ; 
 scalar_t__ SCLP_REQ_FILLED ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  FUNC1 (struct sclp_req*) ; 
 struct sclp_req* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (struct sclp_req*) ; 
 int /*<<< orphan*/  sclp_sync_callback ; 
 int /*<<< orphan*/  FUNC5 (struct completion*) ; 

int FUNC6(sclp_cmdw_t cmd, void *sccb, int timeout)
{
	struct completion completion;
	struct sclp_req *request;
	int rc;

	request = FUNC2(sizeof(*request), GFP_KERNEL);
	if (!request)
		return -ENOMEM;
	if (timeout)
		request->queue_timeout = timeout;
	request->command = cmd;
	request->sccb = sccb;
	request->status = SCLP_REQ_FILLED;
	request->callback = sclp_sync_callback;
	request->callback_data = &completion;
	FUNC0(&completion);

	/* Perform sclp request. */
	rc = FUNC4(request);
	if (rc)
		goto out;
	FUNC5(&completion);

	/* Check response. */
	if (request->status != SCLP_REQ_DONE) {
		FUNC3("sync request failed (cmd=0x%08x, status=0x%02x)\n",
			cmd, request->status);
		rc = -EIO;
	}
out:
	FUNC1(request);
	return rc;
}
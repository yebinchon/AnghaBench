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
typedef  union nvme_result {int dummy; } nvme_result ;
struct request_queue {int dummy; } ;
struct request {unsigned int timeout; int /*<<< orphan*/  q; } ;
struct nvme_command {int dummy; } ;
typedef  int /*<<< orphan*/  blk_mq_req_flags_t ;
struct TYPE_2__ {int flags; int status; union nvme_result result; } ;

/* Variables and functions */
 unsigned int ADMIN_TIMEOUT ; 
 int EINTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int NVME_REQ_CANCELLED ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 
 int FUNC4 (struct request_queue*,struct request*,void*,unsigned int,int /*<<< orphan*/ ) ; 
 struct request* FUNC5 (struct request_queue*,struct nvme_command*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int) ; 
 TYPE_1__* FUNC7 (struct request*) ; 

int FUNC8(struct request_queue *q, struct nvme_command *cmd,
		union nvme_result *result, void *buffer, unsigned bufflen,
		unsigned timeout, int qid, int at_head,
		blk_mq_req_flags_t flags, bool poll)
{
	struct request *req;
	int ret;

	req = FUNC5(q, cmd, flags, qid);
	if (FUNC0(req))
		return FUNC1(req);

	req->timeout = timeout ? timeout : ADMIN_TIMEOUT;

	if (buffer && bufflen) {
		ret = FUNC4(q, req, buffer, bufflen, GFP_KERNEL);
		if (ret)
			goto out;
	}

	if (poll)
		FUNC6(req->q, NULL, req, at_head);
	else
		FUNC2(req->q, NULL, req, at_head);
	if (result)
		*result = FUNC7(req)->result;
	if (FUNC7(req)->flags & NVME_REQ_CANCELLED)
		ret = -EINTR;
	else
		ret = FUNC7(req)->status;
 out:
	FUNC3(req);
	return ret;
}
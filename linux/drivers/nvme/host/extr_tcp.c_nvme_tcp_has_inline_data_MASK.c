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
struct request {int dummy; } ;
struct nvme_tcp_request {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 struct request* FUNC0 (struct nvme_tcp_request*) ; 
 unsigned int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_tcp_request*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct request*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC6(struct nvme_tcp_request *req)
{
	struct request *rq;
	unsigned int bytes;

	if (FUNC5(FUNC2(req)))
		return false; /* async events don't have a request */

	rq = FUNC0(req);
	bytes = FUNC1(rq);

	return FUNC4(rq) == WRITE && bytes &&
		bytes <= FUNC3(req->queue);
}
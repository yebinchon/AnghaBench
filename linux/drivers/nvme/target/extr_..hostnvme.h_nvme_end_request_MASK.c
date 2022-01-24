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
typedef  union nvme_result {int dummy; } nvme_result ;
struct request {int dummy; } ;
struct nvme_request {int status; union nvme_result result; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct request*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct nvme_request* FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct request*) ; 

__attribute__((used)) static inline void FUNC4(struct request *req, __le16 status,
		union nvme_result result)
{
	struct nvme_request *rq = FUNC2(req);

	rq->status = FUNC1(status) >> 1;
	rq->result = result;
	/* inject error when permitted by fault injection framework */
	FUNC3(req);
	FUNC0(req);
}
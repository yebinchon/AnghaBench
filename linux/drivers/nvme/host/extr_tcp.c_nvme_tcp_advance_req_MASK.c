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
struct nvme_tcp_request {scalar_t__ data_sent; int pdu_sent; scalar_t__ data_len; TYPE_1__* curr_bio; int /*<<< orphan*/  iter; } ;
struct TYPE_2__ {struct TYPE_2__* bi_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_tcp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct nvme_tcp_request *req,
		int len)
{
	req->data_sent += len;
	req->pdu_sent += len;
	FUNC0(&req->iter, len);
	if (!FUNC1(&req->iter) &&
	    req->data_sent < req->data_len) {
		req->curr_bio = req->curr_bio->bi_next;
		FUNC2(req, WRITE);
	}
}
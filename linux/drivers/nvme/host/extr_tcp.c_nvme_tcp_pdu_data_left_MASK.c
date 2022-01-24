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
struct nvme_tcp_request {size_t pdu_len; size_t pdu_sent; } ;

/* Variables and functions */
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct nvme_tcp_request*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline size_t FUNC2(struct nvme_tcp_request *req)
{
	return FUNC1(FUNC0(req)) == WRITE ?
			req->pdu_len - req->pdu_sent : 0;
}
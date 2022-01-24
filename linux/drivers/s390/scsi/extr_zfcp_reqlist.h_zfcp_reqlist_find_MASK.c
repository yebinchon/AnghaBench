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
struct zfcp_reqlist {int /*<<< orphan*/  lock; } ;
struct zfcp_fsf_req {int dummy; } ;

/* Variables and functions */
 struct zfcp_fsf_req* FUNC0 (struct zfcp_reqlist*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline struct zfcp_fsf_req *
FUNC3(struct zfcp_reqlist *rl, unsigned long req_id)
{
	unsigned long flags;
	struct zfcp_fsf_req *req;

	FUNC1(&rl->lock, flags);
	req = FUNC0(rl, req_id);
	FUNC2(&rl->lock, flags);

	return req;
}
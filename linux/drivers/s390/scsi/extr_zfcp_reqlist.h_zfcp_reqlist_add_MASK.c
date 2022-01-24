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
struct zfcp_reqlist {int /*<<< orphan*/  lock; int /*<<< orphan*/ * buckets; } ;
struct zfcp_fsf_req {int /*<<< orphan*/  list; int /*<<< orphan*/  req_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct zfcp_reqlist *rl,
				    struct zfcp_fsf_req *req)
{
	unsigned int i;
	unsigned long flags;

	i = FUNC3(req->req_id);

	FUNC1(&rl->lock, flags);
	FUNC0(&req->list, &rl->buckets[i]);
	FUNC2(&rl->lock, flags);
}
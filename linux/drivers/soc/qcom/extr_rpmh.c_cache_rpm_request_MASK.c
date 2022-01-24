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
struct tcs_cmd {int /*<<< orphan*/  data; int /*<<< orphan*/  addr; } ;
struct rpmh_ctrlr {int dirty; int /*<<< orphan*/  cache_lock; int /*<<< orphan*/  cache; } ;
struct cache_req {int /*<<< orphan*/  sleep_val; int /*<<< orphan*/  wake_val; int /*<<< orphan*/  list; int /*<<< orphan*/  addr; } ;
typedef  enum rpmh_state { ____Placeholder_rpmh_state } rpmh_state ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct cache_req* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
#define  RPMH_ACTIVE_ONLY_STATE 130 
#define  RPMH_SLEEP_STATE 129 
#define  RPMH_WAKE_ONLY_STATE 128 
 int /*<<< orphan*/  UINT_MAX ; 
 struct cache_req* FUNC2 (struct rpmh_ctrlr*,int /*<<< orphan*/ ) ; 
 struct cache_req* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct cache_req *FUNC7(struct rpmh_ctrlr *ctrlr,
					   enum rpmh_state state,
					   struct tcs_cmd *cmd)
{
	struct cache_req *req;
	unsigned long flags;

	FUNC5(&ctrlr->cache_lock, flags);
	req = FUNC2(ctrlr, cmd->addr);
	if (req)
		goto existing;

	req = FUNC3(sizeof(*req), GFP_ATOMIC);
	if (!req) {
		req = FUNC0(-ENOMEM);
		goto unlock;
	}

	req->addr = cmd->addr;
	req->sleep_val = req->wake_val = UINT_MAX;
	FUNC1(&req->list);
	FUNC4(&req->list, &ctrlr->cache);

existing:
	switch (state) {
	case RPMH_ACTIVE_ONLY_STATE:
		if (req->sleep_val != UINT_MAX)
			req->wake_val = cmd->data;
		break;
	case RPMH_WAKE_ONLY_STATE:
		req->wake_val = cmd->data;
		break;
	case RPMH_SLEEP_STATE:
		req->sleep_val = cmd->data;
		break;
	default:
		break;
	}

	ctrlr->dirty = true;
unlock:
	FUNC6(&ctrlr->cache_lock, flags);

	return req;
}
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
struct zfcp_fsf_req {int /*<<< orphan*/ * pool; } ;
typedef  int /*<<< orphan*/  mempool_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct zfcp_fsf_req* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct zfcp_fsf_req* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zfcp_fsf_req*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static struct zfcp_fsf_req *FUNC5(mempool_t *pool)
{
	struct zfcp_fsf_req *req;

	if (FUNC1(pool))
		req = FUNC2(pool, GFP_ATOMIC);
	else
		req = FUNC0(sizeof(*req), GFP_ATOMIC);

	if (FUNC4(!req))
		return NULL;

	FUNC3(req, 0, sizeof(*req));
	req->pool = pool;
	return req;
}
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
typedef  void* u32 ;
struct tee_param {int dummy; } ;
struct tee_context {scalar_t__ supp_nowait; int /*<<< orphan*/  teedev; } ;
struct optee_supp_req {size_t num_params; int in_queue; void* ret; int /*<<< orphan*/  link; int /*<<< orphan*/  c; struct tee_param* param; void* func; } ;
struct optee_supp {int /*<<< orphan*/  mutex; int /*<<< orphan*/  ctx; int /*<<< orphan*/  reqs_c; int /*<<< orphan*/  reqs; } ;
struct optee {struct optee_supp supp; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* TEEC_ERROR_COMMUNICATION ; 
 void* TEEC_ERROR_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct optee_supp_req*) ; 
 struct optee_supp_req* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct optee* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

u32 FUNC10(struct tee_context *ctx, u32 func, size_t num_params,
			struct tee_param *param)

{
	struct optee *optee = FUNC8(ctx->teedev);
	struct optee_supp *supp = &optee->supp;
	struct optee_supp_req *req;
	bool interruptable;
	u32 ret;

	/*
	 * Return in case there is no supplicant available and
	 * non-blocking request.
	 */
	if (!supp->ctx && ctx->supp_nowait)
		return TEEC_ERROR_COMMUNICATION;

	req = FUNC3(sizeof(*req), GFP_KERNEL);
	if (!req)
		return TEEC_ERROR_OUT_OF_MEMORY;

	FUNC1(&req->c);
	req->func = func;
	req->num_params = num_params;
	req->param = param;

	/* Insert the request in the request list */
	FUNC6(&supp->mutex);
	FUNC4(&req->link, &supp->reqs);
	req->in_queue = true;
	FUNC7(&supp->mutex);

	/* Tell an eventual waiter there's a new request */
	FUNC0(&supp->reqs_c);

	/*
	 * Wait for supplicant to process and return result, once we've
	 * returned from wait_for_completion(&req->c) successfully we have
	 * exclusive access again.
	 */
	while (FUNC9(&req->c)) {
		FUNC6(&supp->mutex);
		interruptable = !supp->ctx;
		if (interruptable) {
			/*
			 * There's no supplicant available and since the
			 * supp->mutex currently is held none can
			 * become available until the mutex released
			 * again.
			 *
			 * Interrupting an RPC to supplicant is only
			 * allowed as a way of slightly improving the user
			 * experience in case the supplicant hasn't been
			 * started yet. During normal operation the supplicant
			 * will serve all requests in a timely manner and
			 * interrupting then wouldn't make sense.
			 */
			if (req->in_queue) {
				FUNC5(&req->link);
				req->in_queue = false;
			}
		}
		FUNC7(&supp->mutex);

		if (interruptable) {
			req->ret = TEEC_ERROR_COMMUNICATION;
			break;
		}
	}

	ret = req->ret;
	FUNC2(req);

	return ret;
}
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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct qbman_swp {int dummy; } ;
struct dpaa2_io_notification_ctx {int /*<<< orphan*/  (* cb ) (struct dpaa2_io_notification_ctx*) ;} ;
struct dpaa2_io {struct qbman_swp* swp; } ;
struct dpaa2_dq {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DPAA_POLL_MAX ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct dpaa2_dq const*) ; 
 scalar_t__ FUNC2 (struct dpaa2_dq const*) ; 
 int /*<<< orphan*/  FUNC3 (struct qbman_swp*,struct dpaa2_dq const*) ; 
 struct dpaa2_dq* FUNC4 (struct qbman_swp*) ; 
 int /*<<< orphan*/  FUNC5 (struct qbman_swp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qbman_swp*) ; 
 int /*<<< orphan*/  FUNC7 (struct qbman_swp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dpaa2_io_notification_ctx*) ; 

irqreturn_t FUNC9(struct dpaa2_io *obj)
{
	const struct dpaa2_dq *dq;
	int max = 0;
	struct qbman_swp *swp;
	u32 status;

	swp = obj->swp;
	status = FUNC6(swp);
	if (!status)
		return IRQ_NONE;

	dq = FUNC4(swp);
	while (dq) {
		if (FUNC2(dq)) {
			struct dpaa2_io_notification_ctx *ctx;
			u64 q64;

			q64 = FUNC1(dq);
			ctx = (void *)(uintptr_t)q64;
			ctx->cb(ctx);
		} else {
			FUNC0("fsl-mc-dpio: Unrecognised/ignored DQRR entry\n");
		}
		FUNC3(swp, dq);
		++max;
		if (max > DPAA_POLL_MAX)
			goto done;
		dq = FUNC4(swp);
	}
done:
	FUNC5(swp, status);
	FUNC7(swp, 0);
	return IRQ_HANDLED;
}
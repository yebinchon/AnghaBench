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
struct tee_device {int dummy; } ;
struct tee_context {struct optee_context_data* data; struct tee_device* teedev; } ;
struct optee_context_data {int /*<<< orphan*/  sess_list; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; struct tee_context* ctx; } ;
struct optee {TYPE_1__ supp; struct tee_device* supp_teedev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct optee_context_data*) ; 
 struct optee_context_data* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct optee* FUNC6 (struct tee_device*) ; 

__attribute__((used)) static int FUNC7(struct tee_context *ctx)
{
	struct optee_context_data *ctxdata;
	struct tee_device *teedev = ctx->teedev;
	struct optee *optee = FUNC6(teedev);

	ctxdata = FUNC2(sizeof(*ctxdata), GFP_KERNEL);
	if (!ctxdata)
		return -ENOMEM;

	if (teedev == optee->supp_teedev) {
		bool busy = true;

		FUNC4(&optee->supp.mutex);
		if (!optee->supp.ctx) {
			busy = false;
			optee->supp.ctx = ctx;
		}
		FUNC5(&optee->supp.mutex);
		if (busy) {
			FUNC1(ctxdata);
			return -EBUSY;
		}
	}

	FUNC3(&ctxdata->mutex);
	FUNC0(&ctxdata->sess_list);

	ctx->data = ctxdata;
	return 0;
}
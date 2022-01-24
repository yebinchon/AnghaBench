#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tee_device {TYPE_1__* desc; } ;
struct tee_context {int /*<<< orphan*/  list_shm; struct tee_device* teedev; int /*<<< orphan*/  refcount; } ;
struct TYPE_4__ {int (* open ) (struct tee_context*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct tee_context* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tee_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tee_context* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct tee_context*) ; 
 int /*<<< orphan*/  FUNC6 (struct tee_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct tee_device*) ; 

__attribute__((used)) static struct tee_context *FUNC8(struct tee_device *teedev)
{
	int rc;
	struct tee_context *ctx;

	if (!FUNC6(teedev))
		return FUNC0(-EINVAL);

	ctx = FUNC4(sizeof(*ctx), GFP_KERNEL);
	if (!ctx) {
		rc = -ENOMEM;
		goto err;
	}

	FUNC3(&ctx->refcount);
	ctx->teedev = teedev;
	FUNC1(&ctx->list_shm);
	rc = teedev->desc->ops->open(ctx);
	if (rc)
		goto err;

	return ctx;
err:
	FUNC2(ctx);
	FUNC7(teedev);
	return FUNC0(rc);

}
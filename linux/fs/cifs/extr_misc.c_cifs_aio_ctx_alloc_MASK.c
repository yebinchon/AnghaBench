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
struct cifs_aio_ctx {int /*<<< orphan*/  refcount; int /*<<< orphan*/  done; int /*<<< orphan*/  aio_mutex; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cifs_aio_ctx* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct cifs_aio_ctx *
FUNC5(void)
{
	struct cifs_aio_ctx *ctx;

	/*
	 * Must use kzalloc to initialize ctx->bv to NULL and ctx->direct_io
	 * to false so that we know when we have to unreference pages within
	 * cifs_aio_ctx_release()
	 */
	ctx = FUNC3(sizeof(struct cifs_aio_ctx), GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC0(&ctx->list);
	FUNC4(&ctx->aio_mutex);
	FUNC1(&ctx->done);
	FUNC2(&ctx->refcount);
	return ctx;
}
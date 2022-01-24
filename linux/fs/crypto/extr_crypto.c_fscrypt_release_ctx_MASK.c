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
struct fscrypt_ctx {int flags; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int FS_CTX_REQUIRES_FREE_ENCRYPT_FL ; 
 int /*<<< orphan*/  fscrypt_ctx_cachep ; 
 int /*<<< orphan*/  fscrypt_ctx_lock ; 
 int /*<<< orphan*/  fscrypt_free_ctxs ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fscrypt_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct fscrypt_ctx *ctx)
{
	unsigned long flags;

	if (ctx->flags & FS_CTX_REQUIRES_FREE_ENCRYPT_FL) {
		FUNC0(fscrypt_ctx_cachep, ctx);
	} else {
		FUNC2(&fscrypt_ctx_lock, flags);
		FUNC1(&ctx->free_list, &fscrypt_free_ctxs);
		FUNC3(&fscrypt_ctx_lock, flags);
	}
}
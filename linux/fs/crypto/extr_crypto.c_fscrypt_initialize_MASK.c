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
struct fscrypt_ctx {int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned int FS_CFLG_OWN_PAGES ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ fscrypt_bounce_page_pool ; 
 int /*<<< orphan*/  fscrypt_ctx_cachep ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  fscrypt_free_ctxs ; 
 int /*<<< orphan*/  fscrypt_init_mutex ; 
 struct fscrypt_ctx* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int num_prealloc_crypto_ctxs ; 
 int /*<<< orphan*/  num_prealloc_crypto_pages ; 

int FUNC6(unsigned int cop_flags)
{
	int i, res = -ENOMEM;

	/* No need to allocate a bounce page pool if this FS won't use it. */
	if (cop_flags & FS_CFLG_OWN_PAGES)
		return 0;

	FUNC4(&fscrypt_init_mutex);
	if (fscrypt_bounce_page_pool)
		goto already_initialized;

	for (i = 0; i < num_prealloc_crypto_ctxs; i++) {
		struct fscrypt_ctx *ctx;

		ctx = FUNC1(fscrypt_ctx_cachep, GFP_NOFS);
		if (!ctx)
			goto fail;
		FUNC2(&ctx->free_list, &fscrypt_free_ctxs);
	}

	fscrypt_bounce_page_pool =
		FUNC3(num_prealloc_crypto_pages, 0);
	if (!fscrypt_bounce_page_pool)
		goto fail;

already_initialized:
	FUNC5(&fscrypt_init_mutex);
	return 0;
fail:
	FUNC0();
	FUNC5(&fscrypt_init_mutex);
	return res;
}
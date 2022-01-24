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
struct send_ctx {scalar_t__ send_progress; int /*<<< orphan*/  parent_root; int /*<<< orphan*/  send_root; } ;
struct name_cache_entry {int need_later_update; scalar_t__ parent_ino; scalar_t__ parent_gen; int ret; int /*<<< orphan*/  name; scalar_t__ name_len; scalar_t__ gen; scalar_t__ ino; } ;
struct fs_path {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct send_ctx*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct fs_path*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct fs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct fs_path*) ; 
 int FUNC4 (struct send_ctx*,scalar_t__,scalar_t__,struct fs_path*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,scalar_t__*,struct fs_path*) ; 
 int FUNC6 (struct send_ctx*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct name_cache_entry*) ; 
 struct name_cache_entry* FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct send_ctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct send_ctx*,struct name_cache_entry*) ; 
 int FUNC11 (struct send_ctx*,struct name_cache_entry*) ; 
 struct name_cache_entry* FUNC12 (struct send_ctx*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct send_ctx*,struct name_cache_entry*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct send_ctx *sctx,
				     u64 ino, u64 gen,
				     u64 *parent_ino,
				     u64 *parent_gen,
				     struct fs_path *dest)
{
	int ret;
	int nce_ret;
	struct name_cache_entry *nce = NULL;

	/*
	 * First check if we already did a call to this function with the same
	 * ino/gen. If yes, check if the cache entry is still up-to-date. If yes
	 * return the cached result.
	 */
	nce = FUNC12(sctx, ino, gen);
	if (nce) {
		if (ino < sctx->send_progress && nce->need_later_update) {
			FUNC10(sctx, nce);
			FUNC7(nce);
			nce = NULL;
		} else {
			FUNC13(sctx, nce);
			*parent_ino = nce->parent_ino;
			*parent_gen = nce->parent_gen;
			ret = FUNC1(dest, nce->name, nce->name_len);
			if (ret < 0)
				goto out;
			ret = nce->ret;
			goto out;
		}
	}

	/*
	 * If the inode is not existent yet, add the orphan name and return 1.
	 * This should only happen for the parent dir that we determine in
	 * __record_new_ref
	 */
	ret = FUNC6(sctx, ino, gen);
	if (ret < 0)
		goto out;

	if (!ret) {
		ret = FUNC4(sctx, ino, gen, dest);
		if (ret < 0)
			goto out;
		ret = 1;
		goto out_cache;
	}

	/*
	 * Depending on whether the inode was already processed or not, use
	 * send_root or parent_root for ref lookup.
	 */
	if (ino < sctx->send_progress)
		ret = FUNC5(sctx->send_root, ino,
				    parent_ino, parent_gen, dest);
	else
		ret = FUNC5(sctx->parent_root, ino,
				    parent_ino, parent_gen, dest);
	if (ret < 0)
		goto out;

	/*
	 * Check if the ref was overwritten by an inode's ref that was processed
	 * earlier. If yes, treat as orphan and return 1.
	 */
	ret = FUNC0(sctx, *parent_ino, *parent_gen, ino, gen,
			dest->start, dest->end - dest->start);
	if (ret < 0)
		goto out;
	if (ret) {
		FUNC3(dest);
		ret = FUNC4(sctx, ino, gen, dest);
		if (ret < 0)
			goto out;
		ret = 1;
	}

out_cache:
	/*
	 * Store the result of the lookup in the name cache.
	 */
	nce = FUNC8(sizeof(*nce) + FUNC2(dest) + 1, GFP_KERNEL);
	if (!nce) {
		ret = -ENOMEM;
		goto out;
	}

	nce->ino = ino;
	nce->gen = gen;
	nce->parent_ino = *parent_ino;
	nce->parent_gen = *parent_gen;
	nce->name_len = FUNC2(dest);
	nce->ret = ret;
	FUNC14(nce->name, dest->start);

	if (ino < sctx->send_progress)
		nce->need_later_update = 0;
	else
		nce->need_later_update = 1;

	nce_ret = FUNC11(sctx, nce);
	if (nce_ret < 0)
		ret = nce_ret;
	FUNC9(sctx);

out:
	return ret;
}
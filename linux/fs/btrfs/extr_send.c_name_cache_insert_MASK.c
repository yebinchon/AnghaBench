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
struct name_cache_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  radix_list; scalar_t__ ino; } ;
struct send_ctx {int /*<<< orphan*/  name_cache_size; struct name_cache_entry name_cache_list; int /*<<< orphan*/  name_cache; } ;
struct list_head {int /*<<< orphan*/  list; int /*<<< orphan*/  radix_list; scalar_t__ ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct name_cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct name_cache_entry*) ; 
 struct name_cache_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct name_cache_entry*) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,struct name_cache_entry*) ; 
 struct name_cache_entry* FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct send_ctx *sctx,
			     struct name_cache_entry *nce)
{
	int ret = 0;
	struct list_head *nce_head;

	nce_head = FUNC5(&sctx->name_cache,
			(unsigned long)nce->ino);
	if (!nce_head) {
		nce_head = FUNC2(sizeof(*nce_head), GFP_KERNEL);
		if (!nce_head) {
			FUNC1(nce);
			return -ENOMEM;
		}
		FUNC0(nce_head);

		ret = FUNC4(&sctx->name_cache, nce->ino, nce_head);
		if (ret < 0) {
			FUNC1(nce_head);
			FUNC1(nce);
			return ret;
		}
	}
	FUNC3(&nce->radix_list, nce_head);
	FUNC3(&nce->list, &sctx->name_cache_list);
	sctx->name_cache_size++;

	return ret;
}
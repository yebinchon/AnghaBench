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
typedef  void* u64 ;
struct btt_sb {size_t infooff; scalar_t__ nextoff; scalar_t__ external_nlba; scalar_t__ size; int /*<<< orphan*/  list; void* external_lba_start; } ;
struct btt {size_t rawsize; int num_arenas; int /*<<< orphan*/  init_state; void* nlba; int /*<<< orphan*/  arena_list; int /*<<< orphan*/  nd_btt; } ;
struct arena_info {size_t infooff; scalar_t__ nextoff; scalar_t__ external_nlba; scalar_t__ size; int /*<<< orphan*/  list; void* external_lba_start; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INIT_NOTFOUND ; 
 int /*<<< orphan*/  INIT_READY ; 
 struct btt_sb* FUNC0 (struct btt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct btt_sb*) ; 
 int FUNC2 (struct btt_sb*,struct btt_sb*) ; 
 int FUNC3 (struct btt_sb*) ; 
 int FUNC4 (struct btt_sb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct btt*) ; 
 int /*<<< orphan*/  FUNC8 (struct btt_sb*) ; 
 struct btt_sb* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct btt_sb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct btt_sb*) ; 
 int /*<<< orphan*/  FUNC13 (struct btt_sb*,struct btt_sb*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct btt_sb*) ; 

__attribute__((used)) static int FUNC15(struct btt *btt)
{
	int ret = 0;
	struct arena_info *arena;
	struct btt_sb *super;
	size_t remaining = btt->rawsize;
	u64 cur_nlba = 0;
	size_t cur_off = 0;
	int num_arenas = 0;

	super = FUNC9(sizeof(*super), GFP_KERNEL);
	if (!super)
		return -ENOMEM;

	while (remaining) {
		/* Alloc memory for arena */
		arena = FUNC0(btt, 0, 0, 0);
		if (!arena) {
			ret = -ENOMEM;
			goto out_super;
		}

		arena->infooff = cur_off;
		ret = FUNC2(arena, super);
		if (ret)
			goto out;

		if (!FUNC12(btt->nd_btt, super)) {
			if (remaining == btt->rawsize) {
				btt->init_state = INIT_NOTFOUND;
				FUNC6(FUNC14(arena), "No existing arenas\n");
				goto out;
			} else {
				FUNC5(FUNC14(arena),
						"Found corrupted metadata!\n");
				ret = -ENODEV;
				goto out;
			}
		}

		arena->external_lba_start = cur_nlba;
		FUNC13(arena, super, cur_off);

		ret = FUNC11(arena);
		if (ret) {
			FUNC5(FUNC14(arena),
				"Unable to deduce log/padding indices\n");
			goto out;
		}

		ret = FUNC1(arena);
		if (ret)
			goto out;

		ret = FUNC4(arena);
		if (ret)
			goto out;

		ret = FUNC3(arena);
		if (ret)
			goto out;

		FUNC10(&arena->list, &btt->arena_list);

		remaining -= arena->size;
		cur_off += arena->size;
		cur_nlba += arena->external_nlba;
		num_arenas++;

		if (arena->nextoff == 0)
			break;
	}
	btt->num_arenas = num_arenas;
	btt->nlba = cur_nlba;
	btt->init_state = INIT_READY;

	FUNC8(super);
	return ret;

 out:
	FUNC8(arena);
	FUNC7(btt);
 out_super:
	FUNC8(super);
	return ret;
}
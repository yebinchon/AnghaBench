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
struct btt_sb {int dummy; } ;
struct arena_info {int /*<<< orphan*/  infooff; int /*<<< orphan*/  info2off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct arena_info*,int /*<<< orphan*/ ,struct btt_sb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct arena_info*) ; 

__attribute__((used)) static int FUNC4(struct arena_info *arena, struct btt_sb *super)
{
	int ret;

	/*
	 * infooff and info2off should always be at least 512B aligned.
	 * We rely on that to make sure rw_bytes does error clearing
	 * correctly, so make sure that is the case.
	 */
	FUNC2(FUNC3(arena), !FUNC0(arena->infooff, 512),
		"arena->infooff: %#llx is unaligned\n", arena->infooff);
	FUNC2(FUNC3(arena), !FUNC0(arena->info2off, 512),
		"arena->info2off: %#llx is unaligned\n", arena->info2off);

	ret = FUNC1(arena, arena->info2off, super,
			sizeof(struct btt_sb), 0);
	if (ret)
		return ret;

	return FUNC1(arena, arena->infooff, super,
			sizeof(struct btt_sb), 0);
}
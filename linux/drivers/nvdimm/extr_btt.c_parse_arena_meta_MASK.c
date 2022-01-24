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
struct btt_sb {scalar_t__ nextoff; scalar_t__ dataoff; scalar_t__ mapoff; scalar_t__ logoff; scalar_t__ info2off; int /*<<< orphan*/  flags; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; int /*<<< orphan*/  nfree; int /*<<< orphan*/  external_lbasize; int /*<<< orphan*/  external_nlba; int /*<<< orphan*/  internal_lbasize; int /*<<< orphan*/  internal_nlba; } ;
struct arena_info {scalar_t__ infooff; scalar_t__ info2off; void* flags; scalar_t__ size; scalar_t__ logoff; scalar_t__ mapoff; scalar_t__ dataoff; scalar_t__ nextoff; void* version_minor; void* version_major; void* nfree; void* external_lbasize; void* external_nlba; void* internal_lbasize; void* internal_nlba; } ;

/* Variables and functions */
 scalar_t__ BTT_PG_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct arena_info *arena, struct btt_sb *super,
				u64 arena_off)
{
	arena->internal_nlba = FUNC1(super->internal_nlba);
	arena->internal_lbasize = FUNC1(super->internal_lbasize);
	arena->external_nlba = FUNC1(super->external_nlba);
	arena->external_lbasize = FUNC1(super->external_lbasize);
	arena->nfree = FUNC1(super->nfree);
	arena->version_major = FUNC0(super->version_major);
	arena->version_minor = FUNC0(super->version_minor);

	arena->nextoff = (super->nextoff == 0) ? 0 : (arena_off +
			FUNC2(super->nextoff));
	arena->infooff = arena_off;
	arena->dataoff = arena_off + FUNC2(super->dataoff);
	arena->mapoff = arena_off + FUNC2(super->mapoff);
	arena->logoff = arena_off + FUNC2(super->logoff);
	arena->info2off = arena_off + FUNC2(super->info2off);

	arena->size = (FUNC2(super->nextoff) > 0)
		? (FUNC2(super->nextoff))
		: (arena->info2off - arena->infooff + BTT_PG_SIZE);

	arena->flags = FUNC1(super->flags);
}
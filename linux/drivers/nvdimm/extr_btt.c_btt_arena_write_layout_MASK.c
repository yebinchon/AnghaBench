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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
struct nd_gen_sb {int dummy; } ;
struct nd_btt {int /*<<< orphan*/  const* uuid; TYPE_1__* ndns; } ;
struct btt_sb {void* checksum; void* flags; void* info2off; void* logoff; void* mapoff; void* dataoff; void* nextoff; void* infosize; void* nfree; void* internal_nlba; void* internal_lbasize; void* external_nlba; void* external_lbasize; void* version_minor; void* version_major; int /*<<< orphan*/  parent_uuid; int /*<<< orphan*/  uuid; int /*<<< orphan*/  signature; } ;
struct arena_info {int flags; int external_lbasize; int external_nlba; int internal_lbasize; int internal_nlba; int nfree; scalar_t__ infooff; scalar_t__ info2off; scalar_t__ logoff; scalar_t__ mapoff; scalar_t__ dataoff; scalar_t__ nextoff; int /*<<< orphan*/  version_minor; int /*<<< orphan*/  version_major; struct nd_btt* nd_btt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTT_SIG ; 
 int /*<<< orphan*/  BTT_SIG_LEN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (struct arena_info*,struct btt_sb*) ; 
 int FUNC1 (struct arena_info*) ; 
 int FUNC2 (struct arena_info*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct btt_sb*) ; 
 struct btt_sb* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct nd_gen_sb*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct arena_info *arena)
{
	int ret;
	u64 sum;
	struct btt_sb *super;
	struct nd_btt *nd_btt = arena->nd_btt;
	const u8 *parent_uuid = FUNC9(&nd_btt->ndns->dev);

	ret = FUNC2(arena);
	if (ret)
		return ret;

	ret = FUNC1(arena);
	if (ret)
		return ret;

	super = FUNC7(sizeof(struct btt_sb), GFP_NOIO);
	if (!super)
		return -ENOMEM;

	FUNC11(super->signature, BTT_SIG, BTT_SIG_LEN);
	FUNC8(super->uuid, nd_btt->uuid, 16);
	FUNC8(super->parent_uuid, parent_uuid, 16);
	super->flags = FUNC4(arena->flags);
	super->version_major = FUNC3(arena->version_major);
	super->version_minor = FUNC3(arena->version_minor);
	super->external_lbasize = FUNC4(arena->external_lbasize);
	super->external_nlba = FUNC4(arena->external_nlba);
	super->internal_lbasize = FUNC4(arena->internal_lbasize);
	super->internal_nlba = FUNC4(arena->internal_nlba);
	super->nfree = FUNC4(arena->nfree);
	super->infosize = FUNC4(sizeof(struct btt_sb));
	super->nextoff = FUNC5(arena->nextoff);
	/*
	 * Subtract arena->infooff (arena start) so numbers are relative
	 * to 'this' arena
	 */
	super->dataoff = FUNC5(arena->dataoff - arena->infooff);
	super->mapoff = FUNC5(arena->mapoff - arena->infooff);
	super->logoff = FUNC5(arena->logoff - arena->infooff);
	super->info2off = FUNC5(arena->info2off - arena->infooff);

	super->flags = 0;
	sum = FUNC10((struct nd_gen_sb *) super);
	super->checksum = FUNC5(sum);

	ret = FUNC0(arena, super);

	FUNC6(super);
	return ret;
}
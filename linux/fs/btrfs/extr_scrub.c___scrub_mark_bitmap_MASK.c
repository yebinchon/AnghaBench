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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct scrub_parity {scalar_t__ stripe_len; scalar_t__ nsectors; scalar_t__ logic_start; TYPE_2__* sctx; } ;
struct TYPE_4__ {TYPE_1__* fs_info; } ;
struct TYPE_3__ {int sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static inline void FUNC4(struct scrub_parity *sparity,
				       unsigned long *bitmap,
				       u64 start, u64 len)
{
	u64 offset;
	u64 nsectors64;
	u32 nsectors;
	int sectorsize = sparity->sctx->fs_info->sectorsize;

	if (len >= sparity->stripe_len) {
		FUNC1(bitmap, 0, sparity->nsectors);
		return;
	}

	start -= sparity->logic_start;
	start = FUNC2(start, sparity->stripe_len, &offset);
	offset = FUNC3(offset, sectorsize);
	nsectors64 = FUNC3(len, sectorsize);

	FUNC0(nsectors64 < UINT_MAX);
	nsectors = (u32)nsectors64;

	if (offset + nsectors <= sparity->nsectors) {
		FUNC1(bitmap, offset, nsectors);
		return;
	}

	FUNC1(bitmap, offset, sparity->nsectors - offset);
	FUNC1(bitmap, 0, nsectors - (sparity->nsectors - offset));
}
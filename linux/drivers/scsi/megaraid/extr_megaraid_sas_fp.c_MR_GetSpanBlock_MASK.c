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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {struct MR_QUAD_ELEMENT* quad; int /*<<< orphan*/  noElements; } ;
struct MR_SPAN_BLOCK_INFO {TYPE_1__ block_span_info; } ;
struct MR_QUAD_ELEMENT {int /*<<< orphan*/  offsetInSpan; int /*<<< orphan*/  diff; int /*<<< orphan*/  logStart; int /*<<< orphan*/  logEnd; } ;
struct MR_LD_RAID {scalar_t__ spanDepth; int stripeShift; } ;
struct MR_DRV_RAID_MAP_ALL {int dummy; } ;

/* Variables and functions */
 struct MR_LD_RAID* FUNC0 (scalar_t__,struct MR_DRV_RAID_MAP_ALL*) ; 
 struct MR_SPAN_BLOCK_INFO* FUNC1 (scalar_t__,struct MR_DRV_RAID_MAP_ALL*) ; 
 scalar_t__ SPAN_INVALID ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,scalar_t__) ; 
 scalar_t__ FUNC5 (int,scalar_t__) ; 

u32 FUNC6(u32 ld, u64 row, u64 *span_blk,
		    struct MR_DRV_RAID_MAP_ALL *map)
{
	struct MR_SPAN_BLOCK_INFO *pSpanBlock = FUNC1(ld, map);
	struct MR_QUAD_ELEMENT    *quad;
	struct MR_LD_RAID         *raid = FUNC0(ld, map);
	u32                span, j;

	for (span = 0; span < raid->spanDepth; span++, pSpanBlock++) {

		for (j = 0; j < FUNC2(pSpanBlock->block_span_info.noElements); j++) {
			quad = &pSpanBlock->block_span_info.quad[j];

			if (FUNC2(quad->diff) == 0)
				return SPAN_INVALID;
			if (FUNC3(quad->logStart) <= row && row <=
				FUNC3(quad->logEnd) && (FUNC5(row - FUNC3(quad->logStart),
				FUNC2(quad->diff))) == 0) {
				if (span_blk != NULL) {
					u64  blk, debugBlk;
					blk =  FUNC4((row-FUNC3(quad->logStart)), FUNC2(quad->diff));
					debugBlk = blk;

					blk = (blk + FUNC3(quad->offsetInSpan)) << raid->stripeShift;
					*span_blk = blk;
				}
				return span;
			}
		}
	}
	return SPAN_INVALID;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u64 ;
typedef  int u32 ;
typedef  int u16 ;
struct MR_QUAD_ELEMENT {int /*<<< orphan*/  diff; int /*<<< orphan*/  logStart; int /*<<< orphan*/  logEnd; } ;
struct MR_LD_RAID {size_t spanDepth; int stripeShift; } ;
struct TYPE_12__ {TYPE_3__* ldSpanMap; } ;
struct MR_DRV_RAID_MAP_ALL {TYPE_4__ raidMap; } ;
struct TYPE_15__ {scalar_t__ spanRowDataSize; } ;
struct TYPE_14__ {int diff; int* strip_offset; int span_row_data_width; int log_start_lba; int log_end_lba; int span_row_start; int span_row_end; int data_strip_start; int data_strip_end; int data_row_start; int data_row_end; } ;
struct TYPE_13__ {TYPE_6__* span_set; } ;
struct TYPE_11__ {TYPE_2__* spanBlock; } ;
struct TYPE_9__ {int /*<<< orphan*/  noElements; struct MR_QUAD_ELEMENT* quad; } ;
struct TYPE_10__ {TYPE_1__ block_span_info; } ;
typedef  TYPE_5__* PLD_SPAN_INFO ;
typedef  TYPE_6__ LD_SPAN_SET ;

/* Variables and functions */
 int MAX_LOGICAL_DRIVES_EXT ; 
 int MAX_QUAD_DEPTH ; 
 struct MR_LD_RAID* FUNC0 (int,struct MR_DRV_RAID_MAP_ALL*) ; 
 TYPE_8__* FUNC1 (int,size_t,struct MR_DRV_RAID_MAP_ALL*) ; 
 int FUNC2 (int,struct MR_DRV_RAID_MAP_ALL*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int) ; 

void FUNC6(struct MR_DRV_RAID_MAP_ALL *map,
	PLD_SPAN_INFO ldSpanInfo)
{
	u8   span, count;
	u32  element, span_row_width;
	u64  span_row;
	struct MR_LD_RAID *raid;
	LD_SPAN_SET *span_set, *span_set_prev;
	struct MR_QUAD_ELEMENT    *quad;
	int ldCount;
	u16 ld;


	for (ldCount = 0; ldCount < MAX_LOGICAL_DRIVES_EXT; ldCount++) {
		ld = FUNC2(ldCount, map);
		if (ld >= (MAX_LOGICAL_DRIVES_EXT - 1))
			continue;
		raid = FUNC0(ld, map);
		for (element = 0; element < MAX_QUAD_DEPTH; element++) {
			for (span = 0; span < raid->spanDepth; span++) {
				if (FUNC3(map->raidMap.ldSpanMap[ld].spanBlock[span].
					block_span_info.noElements) <
					element + 1)
					continue;
				span_set = &(ldSpanInfo[ld].span_set[element]);
				quad = &map->raidMap.ldSpanMap[ld].
					spanBlock[span].block_span_info.
					quad[element];

				span_set->diff = FUNC3(quad->diff);

				for (count = 0, span_row_width = 0;
					count < raid->spanDepth; count++) {
					if (FUNC3(map->raidMap.ldSpanMap[ld].
						spanBlock[count].
						block_span_info.
						noElements) >= element + 1) {
						span_set->strip_offset[count] =
							span_row_width;
						span_row_width +=
							FUNC1
							(ld, count, map)->spanRowDataSize;
					}
				}

				span_set->span_row_data_width = span_row_width;
				span_row = FUNC5(((FUNC4(quad->logEnd) -
					FUNC4(quad->logStart)) + FUNC3(quad->diff)),
					FUNC3(quad->diff));

				if (element == 0) {
					span_set->log_start_lba = 0;
					span_set->log_end_lba =
						((span_row << raid->stripeShift)
						* span_row_width) - 1;

					span_set->span_row_start = 0;
					span_set->span_row_end = span_row - 1;

					span_set->data_strip_start = 0;
					span_set->data_strip_end =
						(span_row * span_row_width) - 1;

					span_set->data_row_start = 0;
					span_set->data_row_end =
						(span_row * FUNC3(quad->diff)) - 1;
				} else {
					span_set_prev = &(ldSpanInfo[ld].
							span_set[element - 1]);
					span_set->log_start_lba =
						span_set_prev->log_end_lba + 1;
					span_set->log_end_lba =
						span_set->log_start_lba +
						((span_row << raid->stripeShift)
						* span_row_width) - 1;

					span_set->span_row_start =
						span_set_prev->span_row_end + 1;
					span_set->span_row_end =
					span_set->span_row_start + span_row - 1;

					span_set->data_strip_start =
					span_set_prev->data_strip_end + 1;
					span_set->data_strip_end =
						span_set->data_strip_start +
						(span_row * span_row_width) - 1;

					span_set->data_row_start =
						span_set_prev->data_row_end + 1;
					span_set->data_row_end =
						span_set->data_row_start +
						(span_row * FUNC3(quad->diff)) - 1;
				}
				break;
		}
		if (span == raid->spanDepth)
			break;
	    }
	}
}
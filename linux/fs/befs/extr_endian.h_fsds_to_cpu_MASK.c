#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  max_double_indirect_range; int /*<<< orphan*/  double_indirect; int /*<<< orphan*/  max_indirect_range; int /*<<< orphan*/  indirect; int /*<<< orphan*/  max_direct_range; int /*<<< orphan*/ * direct; } ;
typedef  TYPE_1__ befs_disk_data_stream ;
struct TYPE_6__ {void* size; void* max_double_indirect_range; void* double_indirect; void* max_indirect_range; void* indirect; void* max_direct_range; void** direct; } ;
typedef  TYPE_2__ befs_data_stream ;

/* Variables and functions */
 int BEFS_NUM_DIRECT_BLOCKS ; 
 void* FUNC0 (struct super_block const*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct super_block const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline befs_data_stream
FUNC2(const struct super_block *sb, const befs_disk_data_stream *n)
{
	befs_data_stream data;
	int i;

	for (i = 0; i < BEFS_NUM_DIRECT_BLOCKS; ++i)
		data.direct[i] = FUNC1(sb, n->direct[i]);

	data.max_direct_range = FUNC0(sb, n->max_direct_range);
	data.indirect = FUNC1(sb, n->indirect);
	data.max_indirect_range = FUNC0(sb, n->max_indirect_range);
	data.double_indirect = FUNC1(sb, n->double_indirect);
	data.max_double_indirect_range = FUNC0(sb,
						     n->
						     max_double_indirect_range);
	data.size = FUNC0(sb, n->size);

	return data;
}
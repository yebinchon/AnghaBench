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
struct knav_range_info {unsigned int queue_base; } ;
struct knav_queue_inst {unsigned int id; } ;

/* Variables and functions */
 int FUNC0 (struct knav_range_info*,unsigned int,int) ; 

__attribute__((used)) static int FUNC1(struct knav_range_info *range,
					struct knav_queue_inst *inst)
{
	unsigned id = inst->id - range->queue_base;

	return FUNC0(range, id, false);
}
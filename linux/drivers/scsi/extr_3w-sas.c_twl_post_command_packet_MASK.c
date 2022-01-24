#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int dma_addr_t ;
struct TYPE_5__ {int* command_packet_phys; scalar_t__ posted_request_count; scalar_t__ max_posted_request_count; int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ TW_Device_Extension ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int TWL_PULL_MODE ; 
 scalar_t__ TW_COMMAND_OFFSET ; 
 int /*<<< orphan*/  TW_S_POSTED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(TW_Device_Extension *tw_dev, int request_id)
{
	dma_addr_t command_que_value;

	command_que_value = tw_dev->command_packet_phys[request_id];
	command_que_value += TW_COMMAND_OFFSET;

	/* First write upper 4 bytes */
	FUNC2((u32)((u64)command_que_value >> 32), FUNC0(tw_dev));
	/* Then the lower 4 bytes */
	FUNC2((u32)(command_que_value | TWL_PULL_MODE), FUNC1(tw_dev));

	tw_dev->state[request_id] = TW_S_POSTED;
	tw_dev->posted_request_count++;
	if (tw_dev->posted_request_count > tw_dev->max_posted_request_count)
		tw_dev->max_posted_request_count = tw_dev->posted_request_count;

	return 0;
}
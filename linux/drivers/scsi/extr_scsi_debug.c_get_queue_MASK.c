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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct sdebug_queue {int dummy; } ;
struct scsi_cmnd {int /*<<< orphan*/  request; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct sdebug_queue* sdebug_q_arr ; 
 scalar_t__ submit_queues ; 

__attribute__((used)) static struct sdebug_queue *FUNC4(struct scsi_cmnd *cmnd)
{
	u32 tag = FUNC1(cmnd->request);
	u16 hwq = FUNC2(tag);

	FUNC3("tag=%#x, hwq=%d\n", tag, hwq);
	if (FUNC0(hwq >= submit_queues))
		hwq = 0;
	return sdebug_q_arr + hwq;
}
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
typedef  int u32 ;
struct hw_perf_event {int /*<<< orphan*/  event_base; int /*<<< orphan*/  prev_count; int /*<<< orphan*/  config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;

/* Variables and functions */
 int FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event, int flags)
{
	u32 val;
	struct hw_perf_event *hwc = &event->hw;

	/* event id encoded in bits [07:03] */
	val = FUNC0(event) << 3;
	FUNC2(val, hwc->config_base);
	FUNC1(&hwc->prev_count, 0);
	FUNC2(0, hwc->event_base);
}
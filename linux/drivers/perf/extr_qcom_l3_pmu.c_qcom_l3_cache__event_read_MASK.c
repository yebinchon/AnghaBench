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
struct perf_event {int dummy; } ;
struct l3cache_event_ops {int /*<<< orphan*/  (* update ) (struct perf_event*) ;} ;

/* Variables and functions */
 struct l3cache_event_ops* FUNC0 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 

__attribute__((used)) static void FUNC2(struct perf_event *event)
{
	const struct l3cache_event_ops *ops = FUNC0(event);

	ops->update(event);
}
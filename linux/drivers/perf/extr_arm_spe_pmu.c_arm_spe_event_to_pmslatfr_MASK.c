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
typedef  int u64 ;
struct perf_event_attr {int dummy; } ;
struct perf_event {struct perf_event_attr attr; } ;

/* Variables and functions */
 int FUNC0 (struct perf_event_attr*,int /*<<< orphan*/ ) ; 
 int SYS_PMSLATFR_EL1_MINLAT_SHIFT ; 
 int /*<<< orphan*/  min_latency ; 

__attribute__((used)) static u64 FUNC1(struct perf_event *event)
{
	struct perf_event_attr *attr = &event->attr;
	return FUNC0(attr, min_latency)
	       << SYS_PMSLATFR_EL1_MINLAT_SHIFT;
}
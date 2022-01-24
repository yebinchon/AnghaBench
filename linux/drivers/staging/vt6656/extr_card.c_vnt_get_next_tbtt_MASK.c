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
typedef  int u32 ;
typedef  int u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 

u64 FUNC1(u64 tsf, u16 beacon_interval)
{
	u32 beacon_int;

	beacon_int = beacon_interval * 1024;

	/* Next TBTT =
	 *	((local_current_TSF / beacon_interval) + 1) * beacon_interval
	 */
	if (beacon_int) {
		FUNC0(tsf, beacon_int);
		tsf += 1;
		tsf *= beacon_int;
	}

	return tsf;
}
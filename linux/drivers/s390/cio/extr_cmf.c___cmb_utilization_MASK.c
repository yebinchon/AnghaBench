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

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u64 FUNC3(u64 device_connect_time, u64 function_pending_time,
			     u64 device_disconnect_time, u64 start_time)
{
	u64 utilization, elapsed_time;

	utilization = FUNC1(device_connect_time +
				   function_pending_time +
				   device_disconnect_time);

	elapsed_time = FUNC0() - start_time;
	elapsed_time = FUNC2(elapsed_time);
	elapsed_time /= 1000;

	return elapsed_time ? (utilization / elapsed_time) : 0;
}
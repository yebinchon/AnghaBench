#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_2__ {int* bus_info; int punit_cpu_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_CPU_BUS_NUMBER ; 
 int /*<<< orphan*/  MSR_THREAD_ID_INFO ; 
 TYPE_1__* isst_cpu_info ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC2(unsigned int cpu)
{
	u64 data;
	int ret;

	ret = FUNC1(MSR_CPU_BUS_NUMBER, &data);
	if (ret) {
		/* This is not a fatal error on MSR mailbox only I/F */
		isst_cpu_info[cpu].bus_info[0] = -1;
		isst_cpu_info[cpu].bus_info[1] = -1;
	} else {
		isst_cpu_info[cpu].bus_info[0] = data & 0xff;
		isst_cpu_info[cpu].bus_info[1] = (data >> 8) & 0xff;
	}

	ret = FUNC1(MSR_THREAD_ID_INFO, &data);
	if (ret) {
		isst_cpu_info[cpu].punit_cpu_id = -1;
		return ret;
	}
	isst_cpu_info[cpu].punit_cpu_id = data;

	FUNC0(cpu);

	return 0;
}
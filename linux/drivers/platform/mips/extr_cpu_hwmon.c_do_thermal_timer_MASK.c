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
struct work_struct {int dummy; } ;

/* Variables and functions */
 int CPU_THERMAL_THRESHOLD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int nr_packages ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thermal_work ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	int i, value, temp_max = 0;

	for (i=0; i<nr_packages; i++) {
		value = FUNC0(i);
		if (value > temp_max)
			temp_max = value;
	}

	if (temp_max <= CPU_THERMAL_THRESHOLD)
		FUNC3(&thermal_work, FUNC1(5000));
	else
		FUNC2(true);
}